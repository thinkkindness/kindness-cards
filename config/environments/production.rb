KindnessCard::Application.configure do
  config.cache_classes                        = true
  config.consider_all_requests_local          = false
  config.action_controller.perform_caching    = true
  config.action_dispatch.x_sendfile_header    = "X-Sendfile"
  config.serve_static_assets                  = true
  config.action_mailer.raise_delivery_errors  = false
  config.action_mailer.default_url_options    = { :host => 'kindness-cards.heroku.com' }
  config.active_support.deprecation = :notify
end
