class API < Grape::API

  prefix 'api'
  version 'v1', :using => :path
  format :json

  mount Movements_API
end
