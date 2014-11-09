class API < Grape::API

  prefix 'api'
  version 'v1', :using => :path
  format :json
  content_type :json, "application/json"

  mount Movements_API
  mount Points_API
  mount Records_API
end
