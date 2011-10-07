source :gemcutter

gem 'rails', '~> 3.0.0'

# controller utilities
gem 'decent_exposure'

# Authentication
gem 'devise', '~> 1.2'

# Authorization
gem 'cancan', '~> 1.5'

# Other
gem 'haml'

group :production do
  gem "pg" # database
end

group :test do
  gem "sqlite3"

  gem "test-unit"
  gem "autotest"
end

group :development do
  gem "sqlite3"
  gem "rails-erd"

  # documentation
  gem 'annotate',
      :require => false
end
