class ProductDecorator < Draper::Decorator
  delegate_all


  def truncated_description
    h.truncate(object.description, length: 64)
  end

  def current_stock
    "#{product.stock}"
  end
end
