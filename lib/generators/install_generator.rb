module Docky
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy docky rakefiles'
      source_root File.expand_path('../../tasks', __FILE__)

      # copy rake tasks
      def copy_tasks
        template 'docky.rake', 'lib/tasks/docky.rake'
      end
    end
  end
end
