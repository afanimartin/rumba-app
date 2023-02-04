module ApplicationHelper

  def titleize_string(str)
    str.titleize
  end

  def capitalize_string(str)
    str.capitalize
  end

  def truncate_digit(digit)
    digit.truncate
  end

  def format_money(money)
    number_to_currency(money, :unit => "", :precision => 0)
  end

  def cart_total
    current_user.cart.orders.to_a.sum{|s| s.product.price * s.quantity}
  end

  def render_label(obj)
    tag.label obj
  end

  def render_select_tag
    select_tag(:category_id, Category.all.collect{|c| [titleize_string(c.name), c.id] }, { include_blank: "All categories" }, class: "custom-select form-control")
  end
end
