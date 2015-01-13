require 'geo-calculator'
require 'byebug'
require 'active_record'

ActiveRecord::Base.establish_connection(adapter: "sqlite3",
                                       database: ":memory:")
