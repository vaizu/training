class ReleasesController < ApplicationController
  def new
    @release = Release.new
    @music = @release.musics.build ##親モデル.子モデル.buildで子モデルのインスタンス作成
  end

  def create
    @release = Release.new(release_params)
    if @release.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def release_params
    params.require(:release).permit(:sub_title, :main_title, :release_day, :detail,
                                  musics_attributes:[:id, :release_id, :music_title, :lyrics, :composition, :_destroy])
  end
end
