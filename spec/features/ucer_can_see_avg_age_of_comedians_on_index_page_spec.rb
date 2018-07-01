RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'sees the average age of all comedians' do
      mike = Comedian.create(name: "Mike Birbiglia", age: 40)
      Special.create(name: "My Girlfriiend's Boyfriend", comedian_id: mike.id)
      Special.create(name: "Thank God for Jokes", comedian_id: mike.id)
      paul = Comedian.create(name: "Paul Mooney", age: 50)
      Special.create(name: "Know Your History", comedian_id: paul.id)
      Special.create(name: "Paul Mooney", comedian_id: paul.id)

      visit '/comedians'

      within('section') do
        expect(page).to have_content('Average age: 45')
      end
    end
  end
end