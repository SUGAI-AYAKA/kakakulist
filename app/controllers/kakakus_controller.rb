class KakakusController < ApplicationController
  def index
    @kakaku = Kakaku.all
  end

  def show
    @kakaku = Kakaku.find(params[:id])
  end

  def new
    @kakaku = Kakaku.new
  end
  
  def create
    @kakaku = Kakaku.new(kakaku_params)
    
    if @kakaku.save
      flash[:success] = '価格表が正常に投稿されました'
      redirect_to @kakaku
    else
      flash.now[:danger] = '価格表が投稿されませんでした'
      render :new
    end
  end

  def edit
    @kakaku = Kakaku.find(params[:id])
  end
  
  def update
    @update = Kakaku.find(params[:id])
    
    if @kakaku.update(kakaku_params)
      flash[:success] = '価格表は正常に更新されました'
      redirect_to @kakaku
    else
      flash.now[:danger] = '価格は更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    @kakaku = Kakaku.find(params[:id])
    @kakaku.destroy
    
    flash[:success] = '価格は正常に更新されませんでした'
    redirect_to kakakus_url
  end
  
  private
  
  #strong parameter
  def kakaku_params
    params.require(:kakaku).permit(:hinnmei,:sikirikakaku,:teika,:bikou)
  end
end
