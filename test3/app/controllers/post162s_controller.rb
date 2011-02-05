class Post162sController < ApplicationController
  # GET /post162s
  # GET /post162s.xml
  def index
    @post162s = Post162.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post162s }
    end
  end

  # GET /post162s/1
  # GET /post162s/1.xml
  def show
    @post162 = Post162.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post162 }
    end
  end

  # GET /post162s/new
  # GET /post162s/new.xml
  def new
    @post162 = Post162.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post162 }
    end
  end

  # GET /post162s/1/edit
  def edit
    @post162 = Post162.find(params[:id])
  end

  # POST /post162s
  # POST /post162s.xml
  def create
    @post162 = Post162.new(params[:post162])

    respond_to do |format|
      if @post162.save
        format.html { redirect_to(@post162, :notice => 'Post162 was successfully created.') }
        format.xml  { render :xml => @post162, :status => :created, :location => @post162 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post162.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post162s/1
  # PUT /post162s/1.xml
  def update
    @post162 = Post162.find(params[:id])

    respond_to do |format|
      if @post162.update_attributes(params[:post162])
        format.html { redirect_to(@post162, :notice => 'Post162 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post162.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post162s/1
  # DELETE /post162s/1.xml
  def destroy
    @post162 = Post162.find(params[:id])
    @post162.destroy

    respond_to do |format|
      format.html { redirect_to(post162s_url) }
      format.xml  { head :ok }
    end
  end
end
