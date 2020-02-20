class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :create, :destroy]
  def index
    @subs = Sub.all
  end

  def show
    # @sub = Sub.find(params[:id])
  end

  def edit
  end

  def new
  end

  private
  def set_sub
    @sub = Sub.find(params[:id])
  end
end
