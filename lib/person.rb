require "pry"

class Person
    attr_accessor :bank_account, :happiness
    attr_reader :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def happiness=(value)
        if (value >= 0 && value <= 10)
            @happiness = value
        elsif value < 0
            @happiness = 0
        else 
            @happiness = 10 
        end
    end

    def hygiene=(value)
        if (value >= 0 && value <= 10)
            @hygiene = value
        elsif value < 0
            @hygiene = 0
        else 
            @hygiene = 10 
        end
    end

    def clean?
      @hygiene > 7
    end

    def happy?
      @happiness > 7
    end

    def get_paid(amount)
      # @bank_account = @bank_account + amount
      @bank_account += amount
      "all about the benjamins"
    end

    def take_bath
      self.hygiene= (@hygiene + 4)
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.happiness= @happiness + 2
      self.hygiene = @hygiene - 3
      "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      self.happiness = @happiness + 3
      friend.happiness = friend.happiness + 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
      if topic == "politics"
        self.happiness = @happiness - 2
        friend.happiness = friend.happiness - 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness = @happiness + 1
        friend.happiness = friend.happiness + 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
    
end

