require "rails_helper"

RSpec.describe MentorsController, type: :request do
  describe 'edit' do
    context 'when editing a mentor' do
      let!(:mentor_one) { Mentor.create(name:'Vitor', email:'vitor@teste.com', bio: 'oi, sou o vitor e tenho 22 anos') }

      it 'returns status 200' do
        get "/mentors/#{mentor_one.id}/edit"

        expect(response.status).to eq(200)
      end
    end
  end
end
