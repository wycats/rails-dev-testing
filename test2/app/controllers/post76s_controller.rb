class Post76sController < ApplicationController
  # GET /post76s
  # GET /post76s.xml
  def index
    @post76s = Post76.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post76s }
    end
  end

  # GET /post76s/1
  # GET /post76s/1.xml
  def show
    @post76 = Post76.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post76 }
    end
  end

  # GET /post76s/new
  # GET /post76s/new.xml
  def new
    @post76 = Post76.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post76 }
    end
  end

  # GET /post76s/1/edit
  def edit
    @post76 = Post76.find(params[:id])
  end

  # POST /post76s
  # POST /post76s.xml
  def create
    @post76 = Post76.new(params[:post76])

    respond_to do |format|
      if @post76.save
        format.html { redirect_to(@post76, :notice => 'Post76 was successfully created.') }
        format.xml  { render :xml => @post76, :status => :created, :location => @post76 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post76.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post76s/1
  # PUT /post76s/1.xml
  def update
    @post76 = Post76.find(params[:id])

    respond_to do |format|
      if @post76.update_attributes(params[:post76])
        format.html { redirect_to(@post76, :notice => 'Post76 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post76.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post76s/1
  # DELETE /post76s/1.xml
  def destroy
    @post76 = Post76.find(params[:id])
    @post76.destroy

    respond_to do |format|
      format.html { redirect_to(post76s_url) }
      format.xml  { head :ok }
    end
  end
end
