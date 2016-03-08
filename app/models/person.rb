class Person < ActiveRecord::Base
  belongs_to :nationality

  def get_age(birth_date)
    (Date.today - birth_date).to_i / 365
  end
end
