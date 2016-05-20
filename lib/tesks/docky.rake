desc 'doc rails api.'
task :docky => :environment do
  Rails.application.reload_routes!
  all_routes = Rails.application.routes.routes.to_a
  all_routes.reject! { |route| route.verb.nil? || route.path.spec.to_s == '/assets' }
  all_routes.select! { |route| ENV['CONTROLLER'].nil? || route.defaults[:controller].to_s == ENV['CONTROLLER'] }

  max_widths = {
    names: (all_routes.map { |route| route.name.to_s.length }.max),
    verbs: (6),
    paths: (all_routes.map { |route| route.path.spec.to_s.length }.max),
    controllers: (all_routes.map { |route| route.defaults[:controller].to_s.length }.max),
    actions: (all_routes.map { |route| route.defaults[:action].to_s.length }.max)
  }

  all_routes.group_by { |route| route.defaults[:controller] }.each_value do |group|
    puts "\n##Controller: " + group.first.defaults[:controller].to_s
    group.each do |route|
      name = route.name.to_s.rjust(max_widths[:names])
      verb = route.verb.inspect.gsub(/^.{2}|.{2}$/, "").center(max_widths[:verbs])
      path = route.path.spec.to_s.ljust(max_widths[:paths]).gsub(/\.?:\w+/){|s| s }
      action = route.defaults[:action].to_s.ljust(max_widths[:actions])

      puts "#{name} | #{verb} | #{path} | #{action}"
    end
  end
end
