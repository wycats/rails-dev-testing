class Post498sController < ApplicationController
  # GET /post498s
  # GET /post498s.xml
  def index
    @post498s = Post498.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post498s }
    end
  end

  # GET /post498s/1
  # GET /post498s/1.xml
  def show
    @post498 = Post498.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post498 }
    end
  end

  # GET /post498s/new
  # GET /post498s/new.xml
  def new
    @post498 = Post498.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post498 }
    end
  end

  # GET /post498s/1/edit
  def edit
    @post498 = Post498.find(params[:id])
  end

  # POST /post498s
  # POST /post498s.xml
  def create
    @post498 = Post498.new(params[:post498])

    respond_to do |format|
      if @post498.save
        format.html { redirect_to(@post498, :notice => 'Post498 was successfully created.') }
        format.xml  { render :xml => @post498, :status => :created, :location => @post498 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post498.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post498s/1
  # PUT /post498s/1.xml
  def update
    @post498 = Post498.find(params[:id])

    respond_to do |format|
      if @post498.update_attributes(params[:post498])
        format.html { redirect_to(@post498, :notice => 'Post498 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post498.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post498s/1
  # DELETE /post498s/1.xml
  def destroy
    @post498 = Post498.find(params[:id])
    @post498.destroy

    respond_to do |format|
      format.html { redirect_to(post498s_url) }
      format.xml  { head :ok }
    end
  end
end
