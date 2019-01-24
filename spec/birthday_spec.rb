require 'birthday'

describe Birthday do
  let(:birthday)     { described_class.new(Date.today.day.to_s, Date.today.month.to_s) }
  let(:not_birthday) { described_class.new('26', '1') }

  it 'tells how many days until birthday' do
    expect(not_birthday.days_until).to eq(2)
  end

  it 'returns true if today is birthday' do
    expect(birthday.is_today?).to eq true
  end

  it 'returns false if today is not birthday' do
    expect(not_birthday.is_today?).to eq false
  end
end
