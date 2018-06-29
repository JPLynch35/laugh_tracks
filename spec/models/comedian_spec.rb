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
  describe 'methods' do
    it 'outputs all methods of a comedian' do
      mike = Comedian.create(name: "Mike Birbiglia", age: 39)
      Special.create(name: "What I Should Have Said Was Nothing", comedian_id: mike.id)
      Special.create(name: "My Girlfriiend's Boyfriend", comedian_id: mike.id)
      Special.create(name: "Thank God for Jokes", comedian_id: mike.id)

      com_id = mike.id
      specials = mike.find_specials(com_id).name

      expect(specials.name).to include("What I Should Have Said Was Nothing")
    end
  end
end
