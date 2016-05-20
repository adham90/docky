module Docky
  class Routes
    class << self
      def call
        Rails.application.reload_routes!
        routes = Rails.application.routes.routes.to_a
        routes.reject! { |route| route.verb.nil? || route.path.spec.to_s == '/assets' }
        routes.select! { |route| ENV['CONTROLLER'].nil? || route.defaults[:controller].to_s == ENV['CONTROLLER'] }
        format(routes)
      end

      def format(routes)
        routes.group_by { |route| route.defaults[:controller] }.each_value do |group|
          controller = group.first.defaults[:controller].to_s
          routes_list = {}

          group.each do |route|
            name = route.name.to_s
            verb = route.verb.inspect.gsub(/^.{2}|.{2}$/, "")
            path = route.path.spec.to_s.gsub(/\.?:\w+/){|s| s}
            action = route.defaults[:action].to_s
            route_info = {
              "#{controller}":{
                name: name,
                verb: verb,
                path: path,
                action: action
              }
            }
            routes_list.merge!(route_info)
          end
        end
      end

    end
  end
end
