class ProductDecorator < Draper::Decorator
  delegate_all

  decorates_association :comments


  def truncated_description
    h.truncate(object.description, length: 64)
  end

  def current_stock
    "#{product.stock}"
  end

  def comments_exists?
    object.comments.exists?
  end
end
