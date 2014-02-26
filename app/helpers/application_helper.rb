module ApplicationHelper

  def options_from_products(products, key)
    options = ""
    values  = []
    products.each do |product|
      values << [product.send(key).name, product.send(key).id]
    end
    values.uniq.each do |value|
      options += "<option value='#{value[1]}' >#{value[0].titlecase}</option>"
    end
    options
  end

  def category_options
    ['Kategória'] +
    Category.all.map{ |c| [c.name, c.name] }
  end

end
