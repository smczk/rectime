class Users_API < Grape::API
  resource 'users' do
    
    desc "return all users"
    get do
      User.all
    end

    post do
      User.all
    end
  end
end
