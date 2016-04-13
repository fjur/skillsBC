class User < ActiveRecord::Base
  has_one :interest, dependent: :destroy

  # validates :email, uniqueness: true
  # validates :email, format: {with: /[a-zA-Z]+@(\w|\.|-)+\.\w{2,}/}

end