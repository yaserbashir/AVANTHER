# Load the Rails application.
require_relative 'application'


# Force all access to the app over SSL, use Strict-Transport-Security,
# and use secure cookies.
config.force_ssl = true

# Initialize the Rails application.
Rails.application.initialize!

end
