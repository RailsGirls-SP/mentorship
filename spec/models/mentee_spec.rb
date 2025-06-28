require 'rails_helper'

RSpec.describe Mentee, type: :model do
  [
    { input: "Cool Name", expected: "Cool Name", desc: "already formatted" },
    { input: "cool name", expected: "Cool Name", desc: "downcased" },
    { input: "   cOOl   nAMe  ", expected: "Cool Name", desc: "extra spaces" }
  ].each do |tc|
    it "normalizes name: #{tc[:desc]}" do
      mentee = described_class.new(name: tc[:input])
      expect(mentee.name).to eq(tc[:expected])
    end
  end

  [
    { input: "email@example.com", expected: "email@example.com", desc: "already formatted" },
    { input: "  email   @example .com ", expected: "email@example.com", desc: "extra spaces" },
    { input: "EMAIL@EXamp LE.COM", expected: "email@example.com", desc: "upcased" }
  ].each do |tc|
    it "normalizes email: #{tc[:desc]}" do
      mentee = described_class.new(email: tc[:input])
      expect(mentee.email).to eq(tc[:expected])
    end
  end

  [
    { input: "linkedin.com/menteeax", expected: "linkedin.com/menteeax", desc: "already formatted" },
    { input: "  linkedin   .com/ menteeax  ", expected: "linkedin.com/menteeax", desc: "extra spaces" },
    { input: "liNKEDin .COM/menteeaX", expected: "linkedin.com/menteeax", desc: "upcased" }
  ].each do |tc|
    it "normalizes linkedin url: #{tc[:desc]}" do
      mentee = described_class.new(linkedin_url: tc[:input])
      expect(mentee.linkedin_url).to eq(tc[:expected])
    end
  end

  it "validates presence" do
    mentee = described_class.new
    expect(mentee).not_to be_valid
    expect(mentee.errors.to_a).to include(
      "Name can't be blank",
      "Email can't be blank"
    )
  end

  it "validates email uniqueness" do
    email = "email@example.com"
    create(:mentee, email: email)
    mentee = described_class.new(name: "Name", email: email)
    expect(mentee).not_to be_valid
    expect(mentee.errors.to_a).to include(
      "Email has already been taken"
    )
  end

  [
    { attr: :linkedin_url, value: "invalid-url", valid: false, desc: "invalid URL format" },
    { attr: :linkedin_url, value: "https://linkedin.com/menteeax", valid: true, desc: "valid URL format" },
    { attr: :linkedin_url, value: "linkedin.com/menteeax", valid: true, desc: "valid URL format (without https)" },
    { attr: :email, value: "invalid-email", valid: false, desc: "invalid email format" },
    { attr: :email, value: "valid@email.com", valid: true, desc: "valid email" }
  ].each do |tc|
    it "validates #{tc[:attr]}: #{tc[:desc]}" do
      attributes = build(:mentee).attributes
      attributes = attributes.merge(tc[:attr] => tc[:value])
      mentee = described_class.new(attributes)
      expect(mentee.valid?).to eq tc[:valid]
      expect(mentee.errors[tc[:attr]]).to eq([ "is invalid" ]) unless tc[:valid]
    end
  end
end
