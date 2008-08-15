class PerksController < ApplicationController
  # GET /perks
  def index
    @perks = Perk.find(:all, :order => "updated_at desc")
  end

  # GET /perks/1
  def show
    @perk = Perk.find(params[:id])
  end

  # GET /perks/new
  def new
    @perk = Perk.new
  end

  # GET /perks/1/edit
  def edit
    @perk = Perk.find(params[:id])
  end

  # POST /perks
  def create
    @perk = Perk.new(params[:perk])

    if @perk.save
      redirect_to(perks_url)
    else
      render :action => "new"
    end
  end

  # PUT /perks/1
  def update
    @perk = Perk.find(params[:id])

    if @perk.update_attributes(params[:perk])
      redirect_to(perks_url)
    else
      render :action => "edit"
    end
  end

  # DELETE /perks/1
  def destroy
    @perk = Perk.find(params[:id])
    @perk.destroy

    redirect_to(perks_url)
  end
end
