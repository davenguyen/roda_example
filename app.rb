require 'roda'
require './apps/admin1/app'
require './apps/admin2/app'
require './apps/admin3/app'
require './apps/admin4/app'

class App < Roda
  plugin :multi_run

  run 'admin1', Admin1::App
  run 'admin2', Admin2::App
  run 'admin3', Admin3::App
  run 'admin4', Admin4::App

  route do |r|
    r.multi_run

    r.root do
      'Hello!'
    end
  end
end
