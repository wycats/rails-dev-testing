class Post220sController < ApplicationController
  # GET /post220s
  # GET /post220s.xml
  def index
    @post220s = Post220.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post220s }
    end
  end

  # GET /post220s/1
  # GET /post220s/1.xml
  def show
    @post220 = Post220.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post220 }
    end
  end

  # GET /post220s/new
  # GET /post220s/new.xml
  def new
    @post220 = Post220.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post220 }
    end
  end

  # GET /post220s/1/edit
  def edit
    @post220 = Post220.find(params[:id])
  end

  # POST /post220s
  # POST /post220s.xml
  def create
    @post220 = Post220.new(params[:post220])

    respond_to do |format|
      if @post220.save
        format.html { redirect_to(@post220, :notice => 'Post220 was successfully created.') }
        format.xml  { render :xml => @post220, :status => :created, :location => @post220 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post220.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post220s/1
  # PUT /post220s/1.xml
  def update
    @post220 = Post220.find(params[:id])

    respond_to do |format|
      if @post220.update_attributes(params[:post220])
        format.html { redirect_to(@post220, :notice => 'Post220 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post220.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post220s/1
  # DELETE /post220s/1.xml
  def destroy
    @post220 = Post220.find(params[:id])
    @post220.destroy

    respond_to do |format|
      format.html { redirect_to(post220s_url) }
      format.xml  { head :ok }
    end
  end
end
