configure :development do
  set :show_exceptions, true

  ActiveRecord::Base.establish_connection('sqlite3:dev.sqlite')
  # ActiveRecord::Base.establish_connection('postgres://lenny:leonard@localhost/calculator')
end

configure :production do
  # ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
end
