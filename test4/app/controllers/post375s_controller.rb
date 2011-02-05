class Post375sController < ApplicationController
  # GET /post375s
  # GET /post375s.xml
  def index
    @post375s = Post375.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post375s }
    end
  end

  # GET /post375s/1
  # GET /post375s/1.xml
  def show
    @post375 = Post375.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post375 }
    end
  end

  # GET /post375s/new
  # GET /post375s/new.xml
  def new
    @post375 = Post375.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post375 }
    end
  end

  # GET /post375s/1/edit
  def edit
    @post375 = Post375.find(params[:id])
  end

  # POST /post375s
  # POST /post375s.xml
  def create
    @post375 = Post375.new(params[:post375])

    respond_to do |format|
      if @post375.save
        format.html { redirect_to(@post375, :notice => 'Post375 was successfully created.') }
        format.xml  { render :xml => @post375, :status => :created, :location => @post375 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post375.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post375s/1
  # PUT /post375s/1.xml
  def update
    @post375 = Post375.find(params[:id])

    respond_to do |format|
      if @post375.update_attributes(params[:post375])
        format.html { redirect_to(@post375, :notice => 'Post375 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post375.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post375s/1
  # DELETE /post375s/1.xml
  def destroy
    @post375 = Post375.find(params[:id])
    @post375.destroy

    respond_to do |format|
      format.html { redirect_to(post375s_url) }
      format.xml  { head :ok }
    end
  end
end
