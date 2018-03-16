SHIPWORKS_DB = ENV['SHIPWORKS_DATABASE_URL'] || YAML.load(ERB.new(IO.read(File.join(Rails.root, "config", "shipworks_database.yml"))).result)[Rails.env.to_s]
