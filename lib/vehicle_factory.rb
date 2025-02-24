class VehicleFactory
  attr_reader :factory_vehicles

  def initialize
    @factory_vehicles = []
  end
  
  def create_vehicles(info_registrations)
    info_registrations.map do |car| 
      new_car = {
        vin: car[:vin_1_10],
        year: car[:model_year],
        engine: :ev
      }
      @factory_vehicles << Vehicle.new(new_car)
    end
  end
end
   