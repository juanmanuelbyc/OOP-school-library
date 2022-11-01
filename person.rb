class Person
    
    def initialize(age, name = "Unknown", parent_permision = true)
      @id = Random.rand(1..1000)
      @age = age
      @name = name
      @parent_permision = parent_permision
    end
    
    attr_accessor :age
    attr_accessor :name
    attr_reader :id

    def can_use_services?
      (is_of_age? || @parent_permision)? true : false
    end

    private

    def is_of_age?
      age >= 18? true : false
    end

  end
