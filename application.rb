require './boot'

require './lib/yield_calculator'

get '/' do
  # @historical_yield = YieldCalculator.new(ActiveRecord::Base.connection).get_historical_yield()
  # erb :main

  YieldCalculator.new(ActiveRecord::Base.connection).get_historical_yield().to_json
end
