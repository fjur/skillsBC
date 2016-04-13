class Interest < ActiveRecord::Base
  belongs_to :user

  validates :email, uniqueness: true
  validates :email, format: {with: /[a-zA-Z]+@(\w|\.|-)+\.\w{2,}/}

end