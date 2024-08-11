class BookscasesController < ApplicationController
  before_action :set_bookscase, only: %i[ show update destroy ]

  # GET /bookscases
  def index
    @bookscases = Bookscase.all

    render json: @bookscases
  end

  # GET /bookscases/1
  def show
    render json: @bookscase
  end

  # POST /bookscases
  def create
    @bookscase = Bookscase.new(bookscase_params)

    if @bookscase.save
      render json: @bookscase, status: :created, location: @bookscase
    else
      render json: @bookscase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookscases/1
  def update
    if @bookscase.update(bookscase_params)
      render json: @bookscase
    else
      render json: @bookscase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookscases/1
  def destroy
    @bookscase.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookscase
      @bookscase = Bookscase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookscase_params
      params.require(:bookscase).permit(:limit)
    end
end
