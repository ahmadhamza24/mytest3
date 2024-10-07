class Post < ApplicationRecord
  

  # Validations
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  #CallBacks
  before_save :capitalize_title
  
  #Associations
  belongs_to :user




  
  private

  def capitalize_title
    self.title = title.capitalize
  end

end
