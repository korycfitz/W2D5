class Passenger
    require 'byebug'
    attr_reader :name
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(num_str)
        # debugger
        return true if @flight_numbers.include?(num_str.upcase)
        return false
    end

    def add_flight(num_str)
        if !self.has_flight?(num_str)
            @flight_numbers << num_str.upcase
        end
    end

end