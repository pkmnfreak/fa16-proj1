# Q0: Why is this error being thrown?
Because there are no Pokemon models.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The Pokemon are appearing through the Pokemon provided in the seeds.rb file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line creates a button that says "Throw a Pokeball!" that routes to the capture method through capture_path, with the id of the current pokemon in it's url/parameters. The class makes the button a medium size while the method is a patch method to create a new pokemon.

# Question 3: What would you name your own Pokemon?
I don't name my Pokemon. Their natural names are cool.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed '/trainers/' + params[:trainer_id].to_s so that the page will redirect to the trainer page that they were already on. The path needed to have params[:trainer_id] so that it would know which trainer page to redirect to.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This line works because rails uses the layout defined in app/views/layouts/application.html.erb as a default to render every page. In that layout, the errors are already defined and at the very end, they are rendered.

# Give us feedback on the project and decal below!
This project is so cool! I love Pokemon! So much! The only thing that sucks now is that I can't do a Pokemon project for project two haha.
The decal is cool too you guys are all so smart.

# Extra credit: Link your Heroku deployed app
https://pokemon-proj1.herokuapp.com/
