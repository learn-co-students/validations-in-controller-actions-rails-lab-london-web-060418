class Post < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :content, length: { minimum: 100 }
# 
#   def valid_category
#   if self.category
#     cat_ary = ["Won't Believe", "Secret", "Top [number]", "Guess"]
#     if  !click_ary.any? { |phrase| self.title.include?(phrase)  }
#       errors.add(:title, "Sorry pal, that title isn't clickbait enough")
#     end
#   end
# end
#

end
