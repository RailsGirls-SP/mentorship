require "rails_helper"

RSpec.describe MentorsController, type: :request do
  describe 'update' do
    context 'when update a mentor' do

      let!(:mentor_one) { Mentor.create(name:'Vitor', email:'vitor@teste.com', bio: 'oi, sou o vitor e tenho 22 anos') }
      
      it 'returns status 200' do
        put "/mentors/#{mentor_one.id}", :params => { :mentor => { 
          :name => "Vitor Souza", :email => 'vitor@rails.com',
          :url => 'github.com/vitorsouza', :bio => 'Me chamado vitinho, sou dev Ruby a 3 anos, moro em São Paulo, tenho 32 anos'
          } }

        expect(response.status).to eq(200)
      end
    end
  end
end
