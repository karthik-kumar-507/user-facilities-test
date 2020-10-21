# frozen_string_literal: true

# app/controllers/users_controller.rb
class UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update destroy]

  # GET /users
  def index
    @users = User.includes(:role).all
  end

  # GET /users/new
  def new
    @user = User.new
    fetch_roles_facilities
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      @user.facility_ids = user_params[:facility_ids].reject(&:blank?)
      if params[:commit].eql?('Save')
        flash[:success] = 'User added successfully!!'
        redirect_to users_path
      else
        @user = User.new(user_params)
        fetch_roles_facilities
        @record_copied = true
        flash[:success] = 'User added and copied successfully!!'
        render 'new'
      end
    else
      fetch_roles_facilities
      render 'new'
    end
  end

  def show; end

  # GET /users/:id/edit
  def edit; end

  # PUT /users/:id/
  def update
    if @user.update(user_params)
      @user.facility_ids = user_params[:facility_ids].reject(&:blank?)
      flash[:success] = 'User updated successfully!!'
      redirect_to users_path
    else
      render 'edit'
    end
  end

  # DELETE /users/:id/
  def destroy
    @user.destroy
    flash[:error] = 'User deleted successfully!!'
    redirect_to users_path
  end

  private

  def find_user
    @user = User.includes(:facilities).find(params[:id])
    fetch_roles_facilities
  end

  def fetch_roles_facilities
    @facilities = Facility.all
    @roles = Role.all
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :dob,
                                 :gender, :role_id, facility_ids: [])
  end
end
