class PagesController < ApplicationController
  before_action :require_login, except: [:home, :about, :who]


  def home
  end

#여기서부터는 엄마 리스트에관한 액션들!

  def parents_post_write
  end

  def mompost
    @every_post_p=Post.all
  end

  def show2
    @extendp=Post.find(params[:post_id])
  end

 def write2
    @parents = Post.new(user: current_user)
    @parents.type1_post_p = params[:type1]
    @parents.type2_post_p = params[:type2]
    @parents.name_post_p = params[:name]
    @parents.location_post_p = params[:location]
    @parents.age_post_p = params[:age]
    @parents.time1_post_p = params[:time1]
    @parents.time2_post_p = params[:time2]
    @parents.time3_post_p = params[:time3]
    @parents.care_post_p = params[:care]
    @parents.save
    redirect_to "/mompost"
  end

  def destroy2
    @parents = Post.find(params[:post_id])
    @parents.destroy
    redirect_to "/mompost"
  end

  def update_view2
    @parents = Post.find(params[:post_id])
  end

  def siljae2
    @parents = Post.find(params[:post_id])
    @parents.type1_post_p = params[:type1]
    @parents.type2_post_p = params[:type2]
    @parents.name_post_p = params[:name]
    @parents.location_post_p = params[:location]
    @parents.age_post_p = params[:age]
    @parents.time1_post_p = params[:time1]
    @parents.time2_post_p = params[:time2]
    @parents.time3_post_p = params[:time3]
    @parents.care_post_p = params[:care]
    @parents.save
    redirect_to "/mompost"
  end


  def viewpost
  end

#여기까지~~~~~~

  def nanny_post_write

  end

 def show3
    @extendn=Post.find(params[:post_id])
  end

  def write3
    @nanny = Post.new(user: current_user)
    @nanny.type1_post_n = params[:type1]
    @nanny.type2_post_n = params[:type2]
    @nanny.name_post_n = params[:name]
    @nanny.location_post_n = params[:location]
    @nanny.age_post_n = params[:age]
    @nanny.time1_post_n = params[:time1]
    @nanny.time2_post_n = params[:time2]
    @nanny.time3_post_n = params[:time3]

    uploader=PicUploader.new
    file=params[:pic]
    uploader.store!(file)

    @nanny.image_url = uploader.url
    if @nanny.save
      redirect_to "/nannypost"

    else
      render :text => @nanny.errors.messages
    end

  end



 def destroy3
    @nanny = Post.find(params[:post_id])
    @nanny.destroy
    redirect_to "/nannypost"
  end

  def update_view3
    @nanny = Post.find(params[:post_id])
  end

  def siljae3
    @nanny = Post.find(params[:post_id])
    @nanny.type1_post_n = params[:type1]
    @nanny.type2_post_n = params[:type2]
    @nanny.location_post_n = params[:location]
    @nanny.name_post_n = params[:name]
    @nanny.age_post_n = params[:age]
    @nanny.time1_post_n = params[:time1]
    @nanny.time2_post_n = params[:time2]
    @nanny.time3_post_n = params[:time3]
    @nanny.pic_post_n = params[:pic]

    uploader=PicUploader.new
    file=params[:pic]
    uploader.store!(file)

    @nanny.image_url = uploader.url
    if @nanny.save
      redirect_to "/nannypost"

    else
      render :text => @nanny.errors.messages
    end

  end


  def nannypost
    @every_post_n=Post.all.order("id desc")
  end


  def mypage
  end

  def museums

  end
end
