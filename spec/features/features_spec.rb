require_relative 'web_helpers'

feature 'greets the user, and asks for their name and birthday' do
  scenario 'when the page is loaded' do
    enter_name_and_birthday
    expect(page).to have_content('Hello there!')
    expect(page).to have_content("What's your name?")
    expect(page).to have_content('When is your birthday?')
  end
end

# Wishes them happy birthday if it's their birthday today (e.g. Happy Birthday Al!)
feature 'wishes the user happy birthday' do
  scenario 'if its their birthday' do
    enter_name_and_birthday
    click_button 'Go!'
    expect(page).to have_content('Happy birthday, Al!')
  end
end

# Says how many days until their birthday (e.g. Your birthday will be in 4 days, Al.)
