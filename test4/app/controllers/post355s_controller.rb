class Post355sController < ApplicationController
  # GET /post355s
  # GET /post355s.xml
  def index
    @post355s = Post355.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post355s }
    end
  end

  # GET /post355s/1
  # GET /post355s/1.xml
  def show
    @post355 = Post355.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post355 }
    end
  end

  # GET /post355s/new
  # GET /post355s/new.xml
  def new
    @post355 = Post355.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post355 }
    end
  end

  # GET /post355s/1/edit
  def edit
    @post355 = Post355.find(params[:id])
  end

  # POST /post355s
  # POST /post355s.xml
  def create
    @post355 = Post355.new(params[:post355])

    respond_to do |format|
      if @post355.save
        format.html { redirect_to(@post355, :notice => 'Post355 was successfully created.') }
        format.xml  { render :xml => @post355, :status => :created, :location => @post355 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post355.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post355s/1
  # PUT /post355s/1.xml
  def update
    @post355 = Post355.find(params[:id])

    respond_to do |format|
      if @post355.update_attributes(params[:post355])
        format.html { redirect_to(@post355, :notice => 'Post355 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post355.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post355s/1
  # DELETE /post355s/1.xml
  def destroy
    @post355 = Post355.find(params[:id])
    @post355.destroy

    respond_to do |format|
      format.html { redirect_to(post355s_url) }
      format.xml  { head :ok }
    end
  end
end
