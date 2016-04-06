class PagesController < ApplicationController
  def homepage
  @sport = Categorie.find_by_name("Sports").posts.first(5) 
  @econ  = Categorie.find_by_name("Economics").posts.last(5)
  @polit = Categorie.find_by_name("Politics").posts.last(5)
  @gen   = Categorie.find_by_name("General").posts.last(5)
  @educ  = Categorie.find_by_name("Education").posts.last(5)
  @collection = [@sport, @econ, @polit, @gen, @educ]
  end
end
