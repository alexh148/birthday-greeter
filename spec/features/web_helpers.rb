def enter_name_and_birthday
  visit '/'
  fill_in 'name', with: 'Al'
  fill_in 'day', with: '24'
  select 'January', from: 'month'
end
