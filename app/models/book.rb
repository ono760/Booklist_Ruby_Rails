class Book < ActiveRecord::Base
  belongs_to :user
  has_many :users
  validates :title, presence: true,
    length: { minimum: 3 }
  validates :author, presence: true
  
  def self.search(search)
    if search
      where("author ILIKE ? OR title ILIKE?", "%#{search}%", "%#{search}%")
    end
  end

end
