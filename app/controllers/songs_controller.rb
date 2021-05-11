class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end

  def create
    songs = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      genre: params[:genre],
      year: params[:year],
    )
    songs.save
    render json: songs.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def update
    song = Song.find_by(id: params[:id])
    song.title = params[:title] || song.title
    song.album = params[:album] || song.album
    song.artist = params[:artist] || song.artist
    song.genre = params[:genre] || song.genre
    song.year = params[:year] || song.year
    songs.save
    render json: songs.as_json
  end
end
