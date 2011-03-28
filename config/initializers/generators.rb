Rails.application.config.generators do |g|
  g.orm             :active_record
  g.template_engine :haml
  g.test_framework  :test_unit, :fixture => false, :views => false
  g.fixture_replacement :factory_girl
end
