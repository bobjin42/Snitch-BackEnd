class Location < ApplicationRecord
  belongs_to :user
  has_many :comments

  def location_data
    array = [];
    self.comments.map do |comment|
      return array.push({comment: comment, username: comment.username })
    end
    return array
  end

end
