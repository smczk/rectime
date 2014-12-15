class Movements_API < Grape::API

  resource 'movements' do
    
    desc "return user's movements"
    get do
      Movement.where({ user_id: current_user })
        .as_json(include: { record: { include: { point: { only: :name }}, only: [:comment, :updated_at] }}, root: true) 
    end

    post ':id' do
      Movement.update(params[:id],{ completed: true })
    end

    get 'latest' do
      Movement.where({ user_id: current_user, completed: false })
    end

    desc "create movement"
    post do
      Movement.create!({ user_id: current_user.id })
    end
  end
end
