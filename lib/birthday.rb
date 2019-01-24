require 'date'

class Birthday
  def initialize(day, month)
    @day = day
    @month = month
  end

  def days_until
    return 365 - date_difference.abs if earlier_this_year?
    date_difference
  end

  def is_today?
    days_until == 0
  end

  private

  def date
    Date.parse(@day, @month)
  end

  def today
    Date.today
  end

  def date_difference
    (date - today).to_i
  end

  def earlier_this_year?
    date_difference < 0
  end
end
