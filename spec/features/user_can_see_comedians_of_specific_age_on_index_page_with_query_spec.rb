RSpec.describe 'a visitor' do
  context 'visiting /comedians?age=34' do
    it 'sees a list of comedians who are 34 years old' do
      Comedian.create(name: "Mike Birbiglia", age: 34)
      Comedian.create(name: "Pauley Dooney", age: 76)
      Comedian.create(name: "Sammy Mooney", age: 34)

      visit '/comedians?age=34'

      within('section') do
        expect(page).to have_content('Mike Birbiglia')
        expect(page).to have_content('Sammy Mooney')
        expect(page).to_not have_content('Pauley Dooney')
      end
    end
  end
end