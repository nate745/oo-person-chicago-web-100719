# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end
    
    def happiness=(happiness)
    @happiness = happiness
        if happiness > 10 
        @happiness = 10
        end
        if happiness < 0
            @happiness = 0
        end    
    end
    
    def hygiene=(hygiene)
    @hygiene = hygiene
        if hygiene > 10
            @hygiene = 10
        end
        if hygiene < 0
            @hygiene = 0
        end
    end
    
    def happy?
        if @happiness > 7
           true
        else false
        end
    end
    
    def clean?
        if @hygiene > 7
            true
        else false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -=2
            return "blah blah partisan blah lobbyist"
    
    
        elsif topic == "weather"
            self.happiness +=1
            person.happiness +=1
            return "blah blah sun blah rain"
    
        else 
            "blah blah blah blah blah"
        end
    
    end
    
    
    
    end
