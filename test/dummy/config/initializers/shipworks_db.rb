SHIPWORKS_DB = YAML.load(ERB.new(IO.read(File.join(Rails.root, "config", "shipworks_database.yml"))).result)[Rails.env.to_s]
Shipworks::ApplicationRecord # NOTE: Keep it here to force it load models in Shipworks.
