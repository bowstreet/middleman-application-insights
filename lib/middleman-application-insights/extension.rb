require 'middleman-application-insights/helpers'

module Middleman
  class ApplicationInsightsExtension < Extension
    option :instrumentation_key, nil, 'Instrumentation Key'
    option :development, true, 'Add tracking in development environment'

    def initialize(app, options_hash={}, &block)
      super

      app.set :application_insights_settings, options
    end

    def after_configuration
      unless options.instrumentation_key
        $stderr.puts 'Application Insights: Please specify an instrumentation key'
        raise 'No instrumentation key given' if display_message?
      end
    end

    helpers do
      include ::Middleman::ApplicationInsights::Helpers
    end

    private

    def display_message?
      app.build? || app.development? && options.development
    end

  end
end