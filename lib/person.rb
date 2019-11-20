# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        #binding.pry
        if num > 10
            @happiness  = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end

    end


    def hygiene=(num)
        # binding.pry
        if num > 10 
            @hygiene = 10 
        elsif num < 0 
            @hygiene = 0
        else
            @hygiene = num
        end 
    end 



    # def hygiene()
    #     if @hygiene > 10
    #         return 10
    #     elsif @hygiene < 0
    #             return 0
    #     end
    #     @hygiene
    # end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(money)
        @bank_account += money
        return "all about the benjamins"
    end

    def take_bath
        # binding.pry
        self.hygiene += 4
        #  binding.pry
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end
