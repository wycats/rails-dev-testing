class Post210sController < ApplicationController
  # GET /post210s
  # GET /post210s.xml
  def index
    @post210s = Post210.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post210s }
    end
  end

  # GET /post210s/1
  # GET /post210s/1.xml
  def show
    @post210 = Post210.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post210 }
    end
  end

  # GET /post210s/new
  # GET /post210s/new.xml
  def new
    @post210 = Post210.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post210 }
    end
  end

  # GET /post210s/1/edit
  def edit
    @post210 = Post210.find(params[:id])
  end

  # POST /post210s
  # POST /post210s.xml
  def create
    @post210 = Post210.new(params[:post210])

    respond_to do |format|
      if @post210.save
        format.html { redirect_to(@post210, :notice => 'Post210 was successfully created.') }
        format.xml  { render :xml => @post210, :status => :created, :location => @post210 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post210.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post210s/1
  # PUT /post210s/1.xml
  def update
    @post210 = Post210.find(params[:id])

    respond_to do |format|
      if @post210.update_attributes(params[:post210])
        format.html { redirect_to(@post210, :notice => 'Post210 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post210.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post210s/1
  # DELETE /post210s/1.xml
  def destroy
    @post210 = Post210.find(params[:id])
    @post210.destroy

    respond_to do |format|
      format.html { redirect_to(post210s_url) }
      format.xml  { head :ok }
    end
  end
end
