class Post381sController < ApplicationController
  # GET /post381s
  # GET /post381s.xml
  def index
    @post381s = Post381.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post381s }
    end
  end

  # GET /post381s/1
  # GET /post381s/1.xml
  def show
    @post381 = Post381.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post381 }
    end
  end

  # GET /post381s/new
  # GET /post381s/new.xml
  def new
    @post381 = Post381.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post381 }
    end
  end

  # GET /post381s/1/edit
  def edit
    @post381 = Post381.find(params[:id])
  end

  # POST /post381s
  # POST /post381s.xml
  def create
    @post381 = Post381.new(params[:post381])

    respond_to do |format|
      if @post381.save
        format.html { redirect_to(@post381, :notice => 'Post381 was successfully created.') }
        format.xml  { render :xml => @post381, :status => :created, :location => @post381 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post381.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post381s/1
  # PUT /post381s/1.xml
  def update
    @post381 = Post381.find(params[:id])

    respond_to do |format|
      if @post381.update_attributes(params[:post381])
        format.html { redirect_to(@post381, :notice => 'Post381 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post381.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post381s/1
  # DELETE /post381s/1.xml
  def destroy
    @post381 = Post381.find(params[:id])
    @post381.destroy

    respond_to do |format|
      format.html { redirect_to(post381s_url) }
      format.xml  { head :ok }
    end
  end
end
