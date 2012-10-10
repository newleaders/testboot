class StaticController < ApplicationController

  def sitemap
    render "sitemap", layout: "sitemap"
  end

  def show
 	  @paginated_items = Kaminari.paginate_array((1..200).to_a).page(params[:page]).per(20)
    render template: "static/#{params[:path]}"
  end

end
