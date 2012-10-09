class StaticController < ApplicationController

  def show
  	@paginated_items = Kaminari.paginate_array((1..200).to_a).page(params[:page]).per(20)
  end

end
