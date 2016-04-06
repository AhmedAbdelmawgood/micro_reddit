class PagesController < ApplicationController
  def homepage
  @sport = Category.find_by_name("Sports").posts.first(5) 
  @econ  = Category.find_by_name("Economics").posts.last(5)
  @polit = Category.find_by_name("Politics").posts.last(5)
  @gen   = Category.find_by_name("General").posts.last(5)
  @educ  = Category.find_by_name("Education").posts.last(5)
  @collection = [@sport, @econ, @polit, @gen, @educ]
  end
end
