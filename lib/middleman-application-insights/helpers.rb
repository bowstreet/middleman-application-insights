module Middleman
  module ApplicationInsights
    module Helpers

      def application_insights_tag
        render_script('applicationinsights.js.erb')
      end

      private

      def render_script(template)
        return nil if development? && !application_insights_settings.development

        @options = application_insights_settings
        file = File.join(File.dirname(__FILE__), template)
        content = ERB.new(File.read(file)).result(binding)
        content_tag(:script, content, type: 'text/javascript')
      end

    end
  end
end
