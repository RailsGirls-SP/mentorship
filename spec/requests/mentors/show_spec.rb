require "rails_helper"

RSpec.describe MentorsController, type: :request do
  describe 'show' do
    context 'when showing a mentor' do
      let (:mentor) { Mentor.create( name:'Vitor', email:'vitor@teste.com', bio: 'oi, sou o vitor e tenho 22 anos')}
      it 'returns status 200' do
       get "/mentors/#{mentor.id}"
       expect(response.status).to eq(200)
      end
    end
  end
end
