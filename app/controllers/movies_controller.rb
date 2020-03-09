class MoviesController < ApplicationController
  def index
    @movies = Movie.order(created_at: :desc)
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
    @review = Review.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save

      redirect_to movies_path

    else

      render @movie

    end

  end

  private


  def movie_params
    params.require(:movie).permit(
      :title,
      :image_url,
      :release_date,
      :director,
      :runtime_in_minutes,
      :description
    )
  end
end
