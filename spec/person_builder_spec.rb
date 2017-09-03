require_relative '../person'
require_relative '../person_builder'

describe Builder::Person do
  it 'builds a Person' do
    person = Builder::Person.defaults.build

    expect(person).to be_a Model::Person
    expect(person.race).to eq('Human')
  end

  it 'builds a Person with a given name' do
    attributes = { name: 'John' }
    person = Builder::Person.defaults.with(attributes).build

    expect(person.name).to eq('John')
  end

  it 'builds a Person with given attributes' do
    attributes = { name: 'John', age: 26, job: 'Developer' }
    person = Builder::Person.defaults.with(attributes).build

    expect(person.name).to eq('John')
    expect(person.age).to eq(26)
    expect(person.job).to eq('Developer')
  end
end
