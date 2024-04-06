require "rails_helper"

RSpec.describe MentorsController, type: :request do
  describe 'new' do
    context 'when creating a mentor' do
      it 'returns status 200' do
        get '/mentors/new'

        expect(response.status).to eq(200)
      end
    end
  end
end
