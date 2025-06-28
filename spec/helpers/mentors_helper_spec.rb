require 'rails_helper'

RSpec.describe MentorsHelper, type: :helper do
  context "formatting mentorship topics" do
    it 'returns an empty string when given nil' do
      # oi, eu sou um comment
      expect(helper.format_mentorship_topics(nil)).to eq("")
    end

    it 'returns an empty string when given an empty string' do
      expect(helper.format_mentorship_topics("")).to eq("")
    end

    it 'formats a single topic correctly' do
      expect(helper.format_mentorship_topics("ruby")).to eq("Ruby")
    end

    it 'formats multiple topics, capitalizing each and adding space after commas' do
      expect(helper.format_mentorship_topics("ruby,rails,ruby on rails")).to eq("Ruby, Rails, Ruby On Rails")
    end

    it 'handles extra spaces around topics' do
      expect(helper.format_mentorship_topics("  ruby , rails ,  ruby on rails ")).to eq("Ruby, Rails, Ruby On Rails")
    end
  end
end
