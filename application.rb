require './boot'

require './lib/yield_calculator'

get '/' do
  # @historical_yield = YieldCalculator.new(ActiveRecord::Base.connection).get_historical_yield()
  # erb :main
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

  calc_hash = YieldCalculator.new(ActiveRecord::Base.connection).get_historical_yield()

  calc_hash.merge({evn: ENV['DATABASE_URL']}).to_json
end
