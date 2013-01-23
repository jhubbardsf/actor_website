module ApplicationHelper

  def title
    base = "Iris McLean"
    @title.nil? ? base : "#{base} | #{@title}"
  end

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def current_page?(*list)
    list.each do |controller, action|
      return true if controller?(controller) && action?(action)
    end
    false
  end
end
