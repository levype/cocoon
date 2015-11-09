class AdsController < ApplicationController

  before_action :set_ad, only: [:show, :edit, :update]
  before_action :set_criterias, only: [:index, :new]

  def index
    @ads = Ad.all


    # @ads_selected = Ad.all.where(visible: true)

    # if !(@params["city"].nil? || @params["city"] == "")
    #   # @ads_selected = @ads_selected.where("city = ?", @params["city"].capitalize)
    #   @ads_selected = @ads_selected.near(@params["city"], 50)
    # end

    # @max_price = @ads_selected.maximum('price')
    # @min_price = @ads_selected.minimum('price')
    # @max_area = @ads_selected.maximum('area')
    # @min_area = @ads_selected.minimum('area')

    # @max_rating = 0
    # @ads_selected.each do |ad|
    #   @max_rating = ad.rating > @max_rating ? ad.rating : @max_rating
    # end

    # if !(@params["price"].nil? || @params["price"] == "")
    #   @ads_selected = @ads_selected.where("price <= ?", @params["price"].to_i)
    # end
    # if !(@params["style"].nil? || @params["style"] == "")
    #   @ads_selected = @ads_selected.where("style = ?", @params["style"].capitalize)
    # end
    # if !(@params["area"].nil? || @params["area"] == "")
    #   @ads_selected = @ads_selected.where("area >= ?", @params["area"].to_i)
    # end

    # # if !(@params["rating"].nil? || @params["rating"] == "")
    # #   @ads_selected = @ads_selected.where(ad.rating > @params["rating"].to_i)
    # # end

    # if !(@params["exceptional_view"].nil? || @params["exceptional_view"] == "") \
    #   && @params["exceptional_view"] == "on"
    #   @ads_selected = @ads_selected.where("exceptional_view = ?", true)
    # end
    # if !(@params["exposition"].nil? || @params["exposition"] == "") \
    #   && @params["exposition"] == "on"
    #   @ads_selected = @ads_selected.where("exposition = ?", true)
    # end
    # @ads_total_number = @ads_selected.length
    # @ads_selected = @ads_selected.page params[:page]

  end

  def show
  end



  private
  def set_ad
    id = params[:ad_id] || params[:id]
    @ad = Ad.find(id)
  end

  def set_criterias
    @user_id = current_user.id
    @email = current_user.email
    @min_price = current_user.min_price
    @max_price = current_user.max_price
    @min_space = current_user.min_space
    @max_space = current_user.max_space
    @min_room = current_user.min_room
    @max_room = current_user.max_room
    @furnished = current_user.furnished
    @house = current_user.house
    @flat = current_user.flat

    @criteria = {
      user_id:    @user_id,
      email:      @email,
      min_price:  @min_price,
      max_price:  @max_price,
      min_space:  @min_space,
      max_space:  @max_space,
      min_room:   @min_room,
      max_room:   @max_room,
      furnished:  @furnished,
      house:      @house,
      flat:       @flat,
    }


  end


end
