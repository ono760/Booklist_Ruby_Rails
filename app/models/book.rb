class Book < ActiveRecord::Base
  belongs_to :user
  has_many :users
  validates :title, presence: true,
    length: { minimum: 3 }
  validates :author, presence: true

  define_index do
    indexes title, :sortable => true
    indexes author(:name), :as => :author, :sortable =>true
    has created_at, updated_at, user_id
  end

  after_save ThinkingSphinx::RealTime.callback_for(:book)
  
  def self.search(search)
    if search
      where("author ILIKE ? OR title ILIKE?", "%#{search}%", "%#{search}%")
    end
  end

end
