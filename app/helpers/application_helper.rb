module ApplicationHelper

  def title
    base = "Iris McLean"
    @title.nil? ? base : "#{base} | #{@title}"
  end
end
