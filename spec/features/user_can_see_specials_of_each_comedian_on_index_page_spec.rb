RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'should see a list of each comedians specials' do
      mike = Comedian.create(name: "Mike Birbiglia", age: 39)
      Special.create(name: "What I Should Have Said Was Nothing", comedian_id: mike.id)
      Special.create(name: "My Girlfriiend's Boyfriend", comedian_id: mike.id)
      Special.create(name: "Thank God for Jokes", comedian_id: mike.id)

      paul = Comedian.create(name: "Paul Mooney", age: 76)
      Special.create(name: "Know Your History", comedian_id: paul.id)
      Special.create(name: "Paul Mooney", comedian_id: paul.id)

      visit '/comedians'

      within('section') do
        expect(page).to have_content('What I should Have Said Was Nothing')
      end
    end
  end
end
