# middleman-application-insights

An extension for [Middleman](https://middlemanapp.com) to integrate [Microsoft Application Insights](http://azure.microsoft.com/services/application-insights/) into your site.
You just include a single element in your site and keep the configuration in Middleman's `config.rb`.

## Installation

1. Add a dependency in your site's `Gemfile`:

  ```ruby
  gem "middleman-application-insights"
  ```

2. Activate the extension in your project's `config.rb`:

  ```ruby
  # config.rb
  activate :application_insights do |msai|
    msai.instrumentation_key = 'your-instrumentation-key' # Replace with your instrumentation key.
  end
  ```

3. In your layouts, after your footer and all javascript includes, call `application_insights_tag`:

  **For ERB files:**

  ```erb
  # Application Insights
  <%= application_insights_tag %>
  ```

  **In case you use Haml:**

  ```haml
  -# Application Insights tracking
  = application_insights_tag
  ```


## Configuration

```ruby
activate :application_insights do |msai|
  # Instrumentation Key (default = nil, mandatory)
  msai.instrumentation_key = 'your-instrumentation-key'

  # Whether to include tracking in development environment (default = true)
  msai.development = true
end
```

## Usage

Execute `bundle install` then you can run your middleman as usual.

## Special Thanks

* [Daniel Beyerlein](https://github.com/danielbayerlein)
  * For the inspiring [Google Analytics extension](https://github.com/danielbayerlein/middleman-google-analytics).
