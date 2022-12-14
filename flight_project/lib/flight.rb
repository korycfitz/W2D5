class Flight
    attr_reader :passengers
    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end
    
    def full?
        return false if @passengers.length < @capacity
        true
    end
    
    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !self.full?
            @passengers << passenger 
        end
    end
    
    def list_passengers
        @passengers.map { |passenger| passenger.name } 
    end
    
    def [](idx)
        @passengers[idx]
    end
    
    def <<(passenger)
        board_passenger(passenger)
    end
end
    