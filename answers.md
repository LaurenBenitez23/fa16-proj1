# Q0: Why is this error being thrown?

Because HomeController#index is trying to use the Pokemon model but it hasn't been created yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The random pokemon appearing comes from the .sample call in home_controller on the Pokemon that don't have a trainer defined yet.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

When the button is clicked, it will do a patch request looking for the route "capture/:id" 

# Question 3: What would you name your own Pokemon?

Memechu

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I pass in options and redirect_to converts these options to a path

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

its passing in a hash where the key is :error and the value is the message and in application.html.erb it substitutes the key value pair into the div in _messages.html.erb

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
