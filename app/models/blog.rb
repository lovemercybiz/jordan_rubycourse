class Blog < ApplicationRecord
    enum status: {draft: 0, published: 1} #when ever you create a new post by default it will be in draft mode(cause thats how your programmed it in the migrate file). Then you can use the  'published' as a method. 
    #Instructor rule of thumb: is that I'll use an enum if the potential options can be hard coded and the number of potential options is small (usually 1-5 options)
        extend FriendlyId
    friendly_id :title, use: :slugged
end
