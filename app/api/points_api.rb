class Points_API < Grape::API
  resource 'points' do
    desc "return all points"
    get do
      Point.all
    end

    params do
      requires :user_id, type: Integer
    end
    desc "return user's points"
    get ":user_id" do
      Point.where({ user_id: params[:user_id] })
    end
 
    namespace ":user_id" do
      params do
        requires :extra_id, type: String
      end
      desc "return user specified point"
      get ":extra_id" do
        Point.where({ user_id: params[:user_id], extra_id: params[:extra_id] })
      end
    end

    params do
      requires :user_id, type: Integer
      requires :extra_id, type: String
      requires :name, type: String
    end
    desc "register point"
    post do
      Point.create!({ user_id: params[:user_id], extra_id: params[:extra_id], name: params[:name] })
    end
  end
end
