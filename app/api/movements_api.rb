class Movements_API < Grape::API
  resource 'movements' do
    
    desc "return all movements"
    get do
      Movement.all
    end

    post ':id' do
      Movement.update(params[:id],{ completed: true })
    end

    params do
      requires :user_id, type: Integer
    end
    desc "return a movement"
    get ':user_id' do
      Movement.where({ user_id: params[:user_id] })
    end

    namespace ":user_id" do
      get 'latest' do
        Movement.where({ user_id: params[:user_id], completed: false })
      end
    end

    desc "create movement"
    params do
      requires :user_id, type: Integer
    end

    post do
      Movement.create!({ user_id: params[:user_id] })
    end
  end
end
