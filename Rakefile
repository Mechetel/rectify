require 'yaml'
require 'active_record'
require 'fileutils'

namespace :db do
  desc 'Migrate the database'
  task :migrate, [:environment] => :load_config do |t, args|
    migration_path = 'spec/db/migrate'
    ActiveRecord::Migration.verbose = true

    context = ActiveRecord::MigrationContext.new(migration_path)
    context.migrate

    puts '✅ Database migrated.'
  end

  desc 'Create a db/schema.rb file that is portable against any supported DB'
  task :schema, [:environment] => :load_config do
    require 'active_record/schema_dumper'
    filename = 'spec/db/schema.rb'
    FileUtils.mkdir_p(File.dirname(filename))

    File.open(filename, 'w:utf-8') do |file|
      connection = ActiveRecord::Base.connection
      ActiveRecord::SchemaDumper.dump(connection.pool, file)
    end

    puts '📄 schema.rb dumped.'
  end

  desc 'Load database configuration'
  task :load_config do
    env = ENV['RAILS_ENV'] || 'development'
    config_path = 'spec/config/database.yml'
    unless File.exist?(config_path)
      raise "❌ Database config file not found: #{config_path}"
    end

    db_config = YAML.safe_load(File.read(config_path), aliases: true)[env]
    unless db_config
      raise "❌ No configuration found for environment: #{env}"
    end

    ActiveRecord::Base.establish_connection(db_config)
  end
end

namespace :generate do
  desc 'Generate migration (usage: rake generate:migration[name])'
  task :migration, [:name] do |_, args|
    raise '❌ Specify name: rake generate:migration[name]' unless args[:name]

    name = args[:name]
    timestamp = Time.now.strftime('%Y%m%d%H%M%S')
    folder = 'spec/db/migrate'
    FileUtils.mkdir_p(folder)
    path = File.join(folder, "#{timestamp}_#{name}.rb")

    migration_class = name.split('_').map(&:capitalize).join

    File.write(
      path,
      <<~MIGRATION
        class #{migration_class} < ActiveRecord::Migration[8.0]
          def change
          end
        end
      MIGRATION
    )

    puts "🛠 Migration created: #{path}"
  end
end
