module PostsHelper

	def row_class index
		index % 2 == 0 ? 'red' : 'green'
	end

	def readable_date date
		# date.strftime("%B %d, %Y")
		time_ago_in_words(date)
	end

	def get_style
		


        if controller_name == 'registrations' || controller_name == 'sessions' || controller_name == 'passwords'
        	style = asset_path("img/home-bg.jpg")

		
		elsif action_name == 'index'  
        	style = asset_path("img/home-bg.jpg")

        elsif action_name == 'new'
        		style = asset_path("img/contact-bg.jpg")
 
        elsif action_name == 'show'
        	style = asset_path("img/post-bg.jpg")
		
		elsif action_name == 'edit'
        	style = asset_path("img/about-bg.jpg")
		
		end

    	return style

	end


	def get_heading post

		if controller_name == 'registrations' || controller_name == 'sessions' || controller_name == 'passwords'
			heading = 'Blogger'

		elsif action_name == 'index' 
        	heading = 'Blogger'

        elsif action_name == 'new'
        	heading = 'New Post'
		
		elsif action_name == 'show'
        	heading = post.title

        elsif action_name == 'edit'
        	heading = 'Edit Post'
		
		end

    	return heading

    end


    def get_subheading post

    	if controller_name == 'registrations' || controller_name == 'sessions' || controller_name == 'passwords'
    		subheading = 'Create | Read | Update | Delete Blogs'

    	elsif action_name == 'index' 
        	subheading = 'Create | Read | Update | Delete Blogs'

        elsif action_name == 'new'
        	subheading = 'Have thoughts? Create a post.'
		
		elsif action_name == 'show'
			subheading = 'Posted on ' + post.created_at.strftime("%B #{post.created_at.day.ordinalize}, %Y")
	
		elsif action_name == 'edit'
        	subheading = 'Need Correction? Edit post.'

        end
        
    	return subheading
    end

    
end
