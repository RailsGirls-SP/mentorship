require "rails_helper"

RSpec.describe MentorsController, type: :request do
  describe 'destroy' do
    context 'when destroy a mentor' do

      let!(:mentor_one) { Mentor.create(name:'Vitor', email:'vitor@teste.com', bio: 'oi, sou o vitor e tenho 22 anos') }
      
      it 'returns status 302' do
        delete "/mentors/#{mentor_one.id}"

        expect(response.status).to eq(302)
      end
    end
  end
end
