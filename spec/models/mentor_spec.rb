require 'rails_helper'

RSpec.describe Mentor, type: :model do
  [
    {input: "Cool Name", expected: "Cool Name", desc: "already formatted"},
    {input: "cool name", expected: "Cool Name", desc: "downcased"},
    {input: "   cOOl   nAMe  ", expected: "Cool Name", desc: "extra spaces"},
  ].each do |tc|
    it "normalizes name: #{tc[:desc]}" do
      mentor = described_class.new(name: tc[:input])

      expect(mentor.name).to eq(tc[:expected])
    end
  end

  [
    {input: "email@example.com", expected: "email@example.com", desc: "already formatted"},
    {input: "  email   @example .com ", expected: "email@example.com", desc: "extra spaces"},
    {input: "EMAIL@EXamp LE.COM", expected: "email@example.com", desc: "upcased"},
  ].each do |tc|
    it "normalizes email: #{tc[:desc]}" do
      mentor = described_class.new(email: tc[:input])

      expect(mentor.email).to eq(tc[:expected])
    end
  end

  [
    {input: "linkedin.com/mentorax", expected: "linkedin.com/mentorax", desc: "already formatted"},
    {input: "  linkedin   .com/ mentorax  ", expected: "linkedin.com/mentorax", desc: "extra spaces"},
    {input: "liNKEDin .COM/mentoraX", expected: "linkedin.com/mentorax", desc: "upcased"},
  ].each do |tc|
    it "normalizes linkedin url: #{tc[:desc]}" do
      mentor = described_class.new(email: tc[:input])

      expect(mentor.email).to eq(tc[:expected])
    end
  end

  [
    {input: "ruby,rails", expected: "ruby,rails", desc: "already formatted"},
    {input: "  ruby ,  rails    ", expected: "ruby,rails", desc: "extra spaces"},
    {input: "ruBY, RAIls", expected: "ruby,rails", desc: "upcased"},
  ].each do |tc|
    it "normalizes mentorship topics: #{tc[:desc]}" do
      mentor = described_class.new(email: tc[:input])

      expect(mentor.email).to eq(tc[:expected])
    end
  end

  it "validates presence" do
    mentor = described_class.new

    expect(mentor).not_to be_valid
    expect(mentor.errors.to_a).to contain_exactly(
      "Name can't be blank",
      "Email can't be blank"
    )
  end

  it "validates email uniqueness" do
    email = "email@example.com"
    create(:mentor, email:)

    mentor = described_class.new(name: "Name", email:)

    expect(mentor).not_to be_valid
    expect(mentor.errors.to_a).to contain_exactly(
      "Email has already been taken"
    )
  end

  [
    {attr: :linkedin_url, value: "invalid-url", valid: false, desc: "invalid URL format"},
    {attr: :linkedin_url, value: "https://linkedin.com/mentorax", valid: true, desc: "valid URL format"},
    {attr: :linkedin_url, value: "linkedin.com/mentorax", valid: true, desc: "valid URL format (without https)"}
  ].each do |tc|
    it "validates #{tc[:attr]}: #{tc[:desc]}" do
      attributes = build(:mentor).attributes
      attributes = attributes.merge(tc[:attr] => tc[:value])

      mentor = described_class.new(attributes)

      expect(mentor.valid?).to eq tc[:valid]
      expect(mentor.errors[tc[:attr]]).to eq(["is invalid"]) unless tc[:valid]
    end
  end
end
