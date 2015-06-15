require 'middleman-core'
require 'middleman-application-insights/version'

::Middleman::Extensions.register(:application_insights) do
  require 'middleman-application-insights/extension'
  ::Middleman::ApplicationInsightsExtension
end
