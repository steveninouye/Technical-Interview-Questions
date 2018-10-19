class ParkingLot

    def initialize(spots=0)
      @limit = 30
      @vehicles = []
    end
  
    def park(vehicle)
      @vehicles << vehicle
    end
  
    def describe_contents
      @vehicles.each do |vehicle|
        vehicle.describe_self
      end
    end
  
    def num_cars
      car_count = 0
      @vehicles.each do |v|
        car_count += 1 if v.is_a?(Car)
      end
      car_count
    end
  
    def num_motos
      moto_count = 0
      @vehicles.each do |v|
        moto_count += 1 if v.is_a?(Motorcycle)
      end
      moto_count
    end
  
    def print_num_vehicles
      puts "Number Motorcycles: #{num_motos}"
      puts "Number Cars: #{num_cars}"
    end
  
    def cars_left
      total_vs = num_cars + num_motos
      @limit - total_vs
    end
  
  end
  
  class Vehicle
  
    def initialize(license_plate)
      @license_plate = license_plate
    end
  
    def describe_self
      puts "I am a #{self.class} and my license plate num is #{@license_plate}"
    end
  end
  
  class Car < Vehicle
  
    def initialize(license_plate, color)
      super(license_plate)
      @color = color
    end
  
    def describe_self
      puts "I am a #{self.class} and my license plate num is #{@license_plate} my color is #{@color}"
    end
  
  end
  
  class Motorcycle < Vehicle
  
    def initialize(license_plate, wheel_num=2)
      super(license_plate)
      @wheel_num = wheel_num
    end
  
     def describe_self
      puts "I am a #{self.class} and my license plate num is #{@license_plate}. I have #{@wheel_num} wheels."
    end
  
  
  
  end
  
  p = ParkingLot.new
  v1 = Car.new(483726, "black")
  v2 = Car.new(48746847, "red")
  v3 = Motorcycle.new(465)
  
  p.park(v1)
  p.park(v2)
  p.park(v3)
  p.describe_contents
  p.print_cars
  p.print_motos
  