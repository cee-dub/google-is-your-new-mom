class PerksController < ApplicationController
  before_filter :set_body_class, :except => [:index, :update, :destroy]
  
  def editor
    @perks = Perk.find(:all, :order => "updated_at desc")
  end
  
  def index
    @perk = Perk.published.first(:order => "RAND()")
  end

  def new
    @perk = Perk.new
  end

  def edit
    @perk = Perk.find(params[:id])
  end

  def create
    @perk = Perk.new(params[:perk])

    if @perk.save
      redirect_to(editor_perks_url)
    else
      render :action => "new"
    end
  end

  def update
    @perk = Perk.find(params[:id])

    if @perk.update_attributes(params[:perk])
      redirect_to(editor_perks_url)
    else
      render :action => "edit"
    end
  end

  def destroy
    @perk = Perk.find(params[:id])
    @perk.destroy

    redirect_to(editor_perks_url)
  end
  
  private
  def set_body_class
    @body_class = 'editor'
  end
end
