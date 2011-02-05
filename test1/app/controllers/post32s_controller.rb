class Post32sController < ApplicationController
  # GET /post32s
  # GET /post32s.xml
  def index
    @post32s = Post32.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post32s }
    end
  end

  # GET /post32s/1
  # GET /post32s/1.xml
  def show
    @post32 = Post32.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post32 }
    end
  end

  # GET /post32s/new
  # GET /post32s/new.xml
  def new
    @post32 = Post32.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post32 }
    end
  end

  # GET /post32s/1/edit
  def edit
    @post32 = Post32.find(params[:id])
  end

  # POST /post32s
  # POST /post32s.xml
  def create
    @post32 = Post32.new(params[:post32])

    respond_to do |format|
      if @post32.save
        format.html { redirect_to(@post32, :notice => 'Post32 was successfully created.') }
        format.xml  { render :xml => @post32, :status => :created, :location => @post32 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post32.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post32s/1
  # PUT /post32s/1.xml
  def update
    @post32 = Post32.find(params[:id])

    respond_to do |format|
      if @post32.update_attributes(params[:post32])
        format.html { redirect_to(@post32, :notice => 'Post32 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post32.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post32s/1
  # DELETE /post32s/1.xml
  def destroy
    @post32 = Post32.find(params[:id])
    @post32.destroy

    respond_to do |format|
      format.html { redirect_to(post32s_url) }
      format.xml  { head :ok }
    end
  end
end
