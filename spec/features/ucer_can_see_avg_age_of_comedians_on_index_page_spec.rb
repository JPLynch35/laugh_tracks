RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'sees the average age of all comedians' do
      mike = Comedian.create(name: "Mike Birbiglia", age: 40)
      paul = Comedian.create(name: "Paul Mooney", age: 50)

      visit '/comedians'

      within('section') do
        expect(page).to have_content('Average age: 45')
      end
    end
  end
end