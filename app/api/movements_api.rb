class Movements_API < Grape::API
  resource 'movements' do
    
    desc "return all movements"
    get do
      Movement.all
    end

    desc "return a movement"
    params do
      requires :id, type: Integer
    end

    get ':id' do
      Movement.find(param[:id])
    end
  end
end
