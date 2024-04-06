require "rails_helper"

RSpec.describe MentorsController, type: :request do
  describe 'index' do
    context 'when return all mentors' do
      let!(:mentor_one) { Mentor.create(name:'Vitor', email:'vitor@teste.com', bio: 'oi, sou o vitor e tenho 22 anos') }
      let!(:mentor_two) { Mentor.create(name:'Ana', email:'ana@teste.com', bio: 'oi, sou a ana e tenho 30 anos') }

      it 'returns status 200' do
       get "/mentors"

       expect(response.status).to eq(200)
       expect(Mentor.all.count).to eq(2)
      end
    end

    context 'when not returns mentors' do
      it 'returns status 200' do
       get "/mentors"

       expect(response.status).to eq(200)
       expect(Mentor.all.count).to eq(0)
      end
    end
  end
end
