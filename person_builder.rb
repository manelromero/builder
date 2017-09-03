require_relative './person'

module Builder
  class Person
    def self.defaults
      Person.new
    end

    def initialize
      @params = { race: 'Human' }
    end

    def with(attributes = {})
      @params.merge!(attributes)
      self
    end

    def build
      Model::Person.new(@params)
    end
  end
end
