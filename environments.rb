def establish_db_connection(db)
  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end

configure :development do
 set :show_exceptions, true

 db = URI.parse('')
 establish_db_connection(db)
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'])
 establish_db_connection(db)
end

