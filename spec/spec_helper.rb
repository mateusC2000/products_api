require 'database_cleaner/active_record'

# Permitir truncation mesmo que DATABASE_URL seja remoto (como em Docker)
DatabaseCleaner.allow_remote_database_url = true

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation) # limpa antes da suíte de testes
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
