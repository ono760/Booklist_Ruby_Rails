ThinkingSphinx::Index.define :book, :with => :active_record do
  indexes title, :sortable => true
  indexes author.name, :as => :author, :sortable => true
  has created_at, :type => :timestamp
  has updated_at, :type => :timestamp
  has user_id, :type => :integer
end