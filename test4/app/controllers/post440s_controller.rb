class Post440sController < ApplicationController
  # GET /post440s
  # GET /post440s.xml
  def index
    @post440s = Post440.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post440s }
    end
  end

  # GET /post440s/1
  # GET /post440s/1.xml
  def show
    @post440 = Post440.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post440 }
    end
  end

  # GET /post440s/new
  # GET /post440s/new.xml
  def new
    @post440 = Post440.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post440 }
    end
  end

  # GET /post440s/1/edit
  def edit
    @post440 = Post440.find(params[:id])
  end

  # POST /post440s
  # POST /post440s.xml
  def create
    @post440 = Post440.new(params[:post440])

    respond_to do |format|
      if @post440.save
        format.html { redirect_to(@post440, :notice => 'Post440 was successfully created.') }
        format.xml  { render :xml => @post440, :status => :created, :location => @post440 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post440.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post440s/1
  # PUT /post440s/1.xml
  def update
    @post440 = Post440.find(params[:id])

    respond_to do |format|
      if @post440.update_attributes(params[:post440])
        format.html { redirect_to(@post440, :notice => 'Post440 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post440.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post440s/1
  # DELETE /post440s/1.xml
  def destroy
    @post440 = Post440.find(params[:id])
    @post440.destroy

    respond_to do |format|
      format.html { redirect_to(post440s_url) }
      format.xml  { head :ok }
    end
  end
end
