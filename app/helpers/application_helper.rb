module ApplicationHelper
  # Builds each view's page title
  def site_title(title_suffix)
    title_prefix = 'Ryan DeFord'

    if title_suffix.nil? || title_suffix.empty?
      return title_prefix
    else
      return [title_prefix, title_suffix].join(' | ')
    end
  end
end
