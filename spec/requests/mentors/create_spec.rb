require "rails_helper"

RSpec.describe MentorsController, type: :request do
  describe 'create' do
    context 'when create a mentor' do
      it 'returns status 201' do
        post '/mentors', :params => { :mentor => { 
          :name => "Juliana", :email => 'juliana@rails.com',
          :url => 'github.com/juliana', :bio => 'Me chamado Juliana, sou dev Ruby a 3 anos, moro em São Paulo, tenho 32 anos'
          } }

        expect(response.status).to eq(201)
      end
    end

    context 'when params are missing' do
      context 'when name is blank' do
        it 'returns errors' do
          post '/mentors', :params => { :mentor => { 
            :name => nil, :email => 'juliana@rails.com',
            :url => 'github.com/juliana', :bio => 'Me chamado Juliana, sou dev Ruby a 3 anos, moro em São Paulo, tenho 32 anos'
            } }

          expect(response.status).to eq(422)
        end
      end
    end
  end
end
