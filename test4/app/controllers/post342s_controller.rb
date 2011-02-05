class Post342sController < ApplicationController
  # GET /post342s
  # GET /post342s.xml
  def index
    @post342s = Post342.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post342s }
    end
  end

  # GET /post342s/1
  # GET /post342s/1.xml
  def show
    @post342 = Post342.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post342 }
    end
  end

  # GET /post342s/new
  # GET /post342s/new.xml
  def new
    @post342 = Post342.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post342 }
    end
  end

  # GET /post342s/1/edit
  def edit
    @post342 = Post342.find(params[:id])
  end

  # POST /post342s
  # POST /post342s.xml
  def create
    @post342 = Post342.new(params[:post342])

    respond_to do |format|
      if @post342.save
        format.html { redirect_to(@post342, :notice => 'Post342 was successfully created.') }
        format.xml  { render :xml => @post342, :status => :created, :location => @post342 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post342.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post342s/1
  # PUT /post342s/1.xml
  def update
    @post342 = Post342.find(params[:id])

    respond_to do |format|
      if @post342.update_attributes(params[:post342])
        format.html { redirect_to(@post342, :notice => 'Post342 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post342.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post342s/1
  # DELETE /post342s/1.xml
  def destroy
    @post342 = Post342.find(params[:id])
    @post342.destroy

    respond_to do |format|
      format.html { redirect_to(post342s_url) }
      format.xml  { head :ok }
    end
  end
end
