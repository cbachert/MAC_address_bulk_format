module ApplicationHelper
  def nil_or_empty(variable)
    if variable.nil?
      return true
    elsif variable.empty?
      return true
    else
      return false
    end
  end
end
