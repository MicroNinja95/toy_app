class UpdatedUsersController < ApplicationController
  before_action :set_updated_user, only: [:show, :edit, :update, :destroy]

  # GET /updated_users
  # GET /updated_users.json
  def index
    @updated_users = UpdatedUser.all
  end

  # GET /updated_users/1
  # GET /updated_users/1.json
  def show
  end

  # GET /updated_users/new
  def new
    @updated_user = UpdatedUser.new
  end

  # GET /updated_users/1/edit
  def edit
  end

  # POST /updated_users
  # POST /updated_users.json
  def create
    @updated_user = UpdatedUser.new(updated_user_params)

    respond_to do |format|
      if @updated_user.save
        format.html { redirect_to @updated_user, notice: 'Updated user was successfully created.' }
        format.json { render :show, status: :created, location: @updated_user }
      else
        format.html { render :new }
        format.json { render json: @updated_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /updated_users/1
  # PATCH/PUT /updated_users/1.json
  def update
    respond_to do |format|
      if @updated_user.update(updated_user_params)
        format.html { redirect_to @updated_user, notice: 'Updated user was successfully updated.' }
        format.json { render :show, status: :ok, location: @updated_user }
      else
        format.html { render :edit }
        format.json { render json: @updated_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /updated_users/1
  # DELETE /updated_users/1.json
  def destroy
    @updated_user.destroy
    respond_to do |format|
      format.html { redirect_to updated_users_url, notice: 'Updated user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_updated_user
      @updated_user = UpdatedUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def updated_user_params
      params.require(:updated_user).permit(:user_name, :user_email)
    end
end
