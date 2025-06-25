module MentorsHelper
  def format_mentorship_topics(topics)
    return "" if topics.blank?

    topics.split(",").map { |topic| topic.strip.titleize }.join(", ")
  end
end
