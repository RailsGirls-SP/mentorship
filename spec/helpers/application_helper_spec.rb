require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  context 'providing safe URLs' do
    it 'adds https if missing' do
      expect(helper.safe_url('linkedin.com/in/test')).to eq('https://linkedin.com/in/test')
    end

    it 'preserves existing https' do
      expect(helper.safe_url('https://linkedin.com/in/test')).to eq('https://linkedin.com/in/test')
    end

    it 'returns nil for javascript: URLs' do
      expect(helper.safe_url('javascript:alert(1)')).to be_nil
    end

    it 'returns nil for blank or invalid URLs' do
      expect(helper.safe_url(nil)).to be_nil
      expect(helper.safe_url('')).to be_nil
      expect(helper.safe_url('::::')).to be_nil
    end
  end
end
