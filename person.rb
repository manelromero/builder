module Model
    class Person
    attr_reader :race, :name, :age, :job

    def initialize(descriptor)
      @race = descriptor[:race]
      @name = descriptor[:name]
      @age = descriptor[:age]
      @job = descriptor[:job]
    end
  end
end
