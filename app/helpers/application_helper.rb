module ApplicationHelper
  def grade?(target, grade)
    (target == grade || target == 0) ? true:false
  end
end
