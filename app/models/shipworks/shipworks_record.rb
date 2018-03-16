module Shipworks
  class ShipworksRecord < ActiveRecord::Base
    self.abstract_class = true
    shipworks_db = ENV['SHIPWORKS_DATABASE_URL']
    if shipworks_db.nil? && File.exist?(File.join(Rails.root, "config", "shipworks_database.yml"))
      shipworks_db = YAML.load(ERB.new(IO.read(File.join(Rails.root, "config", "shipworks_database.yml"))).result)[Rails.env.to_s]
    end
    establish_connection shipworks_db if shipworks_db.present?

    def self.table_name
      self.name.split('::').last
    end
  end
end
