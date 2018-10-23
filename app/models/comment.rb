class Comment < ApplicationRecord
  belongs_to :location
  belongs_to :user

  def username
    return self.user.username
  end

end
