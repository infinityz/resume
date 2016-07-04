class PagesController < ApplicationController
  def index
    @links = Link.all.order(:name)
    @profile_items = ProfileItem.all.order(importance: :desc)
    @expertise_categories = ExpertiseCategory.all.order(importance: :desc)
    @experiences = Experience.all.order(start_date: :desc)
  end
end
