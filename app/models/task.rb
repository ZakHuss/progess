class Task < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { minimum: 5, maximum: 200 }
  
  auto_html_for :content do
    html_escape
    image
    youtube(width: '100%', height: 200)
    link target: '_blank', rel: 'nofollow' 
    simple_format
  end
end