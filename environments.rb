configure :development do
  set :show_exceptions, true

  ActiveRecord::Base.establish_connection("postgres://rrfxnjkrqbjnmz:LFA49jt-g0zIxwCmKRJOLbMw_q@ec2-54-243-48-181.compute-1.amazonaws.com:5432/d7phdfnn0tf974")
  # ActiveRecord::Base.establish_connection('postgres://lenny:leonard@localhost/calculator')
end

configure :production do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
end
