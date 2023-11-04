module Admin
  class ActiontextAssetsGenerator < Rails::Generators::Base
    source_root File.expand_path("templates", __dir__)

    def create_admin_js
      template "administrate-rich-text.js.erb", "app/javascript/administrate-rich-text.js"

      manifest_file = "app/assets/config/manifest.js"


      if File.exist?(manifest_file)
        append_to_file manifest_file do
          "\n//= link administrate-rich-text.css\n//= link administrate-rich-text.js"
        end
      end
    end
  end
end
