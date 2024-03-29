module ApplicationHelper
  def grade?(target, grade)
    (target == grade || target == 0) ? true:false
  end

  def eval_circle(_1or0)
    _1or0 == 1 ? "○":""
  end

  def eval_abc(num)
    case num
    when 3
      "A"
    when 2
      "B"
    when 1
      "C"
    when 0
      ""
    end
  end

  def eval_123(num)
    case num
    when 3
      "3"
    when 2
      "2"
    when 1
      "1"
    when 0
      ""
    end
  end

  def print_hide?(print_status)
    print_status == "hide" ? "print_hide" : ""
  end

  def name_hide?(name_status)
    name_status == "hide" ? "name_hide" : ""
  end

  def print_display_border?(print_status)
    print_status == "display" ? "print_display_border" : ""
  end
end
