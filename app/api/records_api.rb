class Records_API < Grape::API
  resource 'records' do
    params do
      requires :point_id, type: Integer
      requires :movement_id, type: Integer
    end
    desc "register record"
    post do
      Record.create!({ point_id: params[:point_id], movement_id: params[:movement_id], comment: params[:comment] })
    end
  end
end
