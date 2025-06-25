module ApplicationHelper
  def safe_url(url)
    return nil if url.blank?

    url = url.strip
    # Adiciona "https://" se não tiver http ou https
    url = "https://#{url}" unless url.match?(/\Ahttps?:\/\//i)

    # Valida se é uma URL bem formada
    uri = URI.parse(url)
    uri.scheme.in?(%w[http https]) ? url : nil
  rescue URI::InvalidURIError
    nil
  end
end
