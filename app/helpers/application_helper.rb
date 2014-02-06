module ApplicationHelper

  def category_options
    ['Kategória'] +
    Category.all.map{ |c| [c.name, c.name] }
  end


end
