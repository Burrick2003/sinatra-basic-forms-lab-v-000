create puppy
<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>Poo-Paws Adoption</title>
 </head>
 <body>
   <form method="POST" action="/puppy">
     <p>Name <input type="text" name="name" id="name"></p>
     <p>Breed <input type="text" name="breed" id="breed"></p>
     <p>Age <input type="text" name="age" id="age"></p>
     <input type="submit" id="submit"> <!-- ID was the trick, not in the previous lab -->
   </form>
 </body>
</html>

display
<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>Poo-Paws Adoption</title>
 </head>
 <body>
   <p> Puppy Name: <%=@name%></p>
   <p> Breed: <%=@breed%></p>
   <p> Age: <%=@age%></p>
 </body>
</html>

index
<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>Poo-Paws Adoption</title>
 </head>
 <body>
   <a href="/new"> Click Here To List A Puppy </a>
 </body>
</html>

app
require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name=params['name']
    @age=params['age']
    @breed=params['breed']
  end

end
