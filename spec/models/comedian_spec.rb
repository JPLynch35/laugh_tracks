RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe 'Class Methoods' do
    it '.average_age provides the average age of all comedians' do
      mike = Comedian.create(name: "Mike Birbiglia", age: 40)
      paul = Comedian.create(name: "Paul Mooney", age: 50)

      expected = Comedian.average_age
      expect(expected).to eq(45)
    end
  end
end
