class Points_API < Grape::API
  resource 'points' do
    desc "return user's points"
    get do
      Point.where({ user_id: current_user })
    end

    params do
      requires :extra_id, type: String
    end
    desc "return user specified point"
    get ":extra_id" do
      Point.where({ user_id: current_user, extra_id: params[:extra_id] })
    end

    params do
      requires :extra_id, type: String
      requires :name, type: String
    end
    desc "register point"
    post do
      Point.create!({ user_id: current_user.id, extra_id: params[:extra_id], name: params[:name] })
    end
  end
end
