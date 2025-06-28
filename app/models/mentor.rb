class Mentor < ApplicationRecord
  normalizes :name, with: ->(n) { n.strip.downcase.gsub(/\s+/, " ").titleize }
  normalizes :email, with: ->(e) { e.strip.downcase.gsub(/\s+/, "") }
  normalizes :linkedin_url, with: ->(url) { url.strip.downcase.gsub(/\s+/, "") }
  normalizes :mentorship_topics, with: ->(topics) {
    topics.to_s.split(",").map { |t| t.strip.downcase.gsub(/\s+/, " ") }.join(",")
  }

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: URI::MailTo::EMAIL_REGEXP, unless: lambda { email.blank? }
  validates :linkedin_url,
    format: /\A(http:\/\/|https:\/\/)?(www\.)?linkedin\.com\/[a-zA-Z0-9_\-\/]+\z/,
    allow_blank: true
    
  has_many :mentorships
  has_many :mentees, through: :mentorships

end

