class Admin::PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  # GET /admin/packages
  # GET /admin/packages.json
  def index
    @packages = Package.includes(:event).all
  end

  # GET /admin/packages/1
  # GET /admin/packages/1.json
  def show
  end

  # GET /admin/packages/new
  def new
    @package = Package.new
  end

  # GET /admin/packages/1/edit
  def edit
  end

  # POST /admin/packages
  # POST /admin/packages.json
  def create
    @package = Package.new(package_params)

    respond_to do |format|
      if @package.save
        format.html { redirect_to [:admin, @package], notice: 'Package was successfully created.' }
        format.json { render action: 'show', status: :created, location: @package }
      else
        format.html { render action: 'new' }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/packages/1
  # PATCH/PUT /admin/packages/1.json
  def update
    respond_to do |format|
      if @package.update(package_params)
        format.html { redirect_to [:admin, @package], notice: 'Package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/packages/1
  # DELETE /admin/packages/1.json
  def destroy
    @package.destroy
    respond_to do |format|
      format.html { redirect_to admin_packages_url, notice: 'Package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit(:name, :event_id)
    end
end
