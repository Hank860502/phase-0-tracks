# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/:number1/plus/:number2' do
  first = params[:number1].to_i
  second = params[:number2].to_i
  store = first + second
  "The result is #{store}"
end
get '/contact' do
  "I live in 1600 Pennsylvania Ave NW, Washington, DC 20500"
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job #{name}!"
  else
    "Good job!"
  end
end
# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# bonus: search students info by age
get '/search_age/:age' do
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])
  student.to_s
end