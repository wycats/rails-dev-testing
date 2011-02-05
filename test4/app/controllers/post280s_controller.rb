class Post280sController < ApplicationController
  # GET /post280s
  # GET /post280s.xml
  def index
    @post280s = Post280.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post280s }
    end
  end

  # GET /post280s/1
  # GET /post280s/1.xml
  def show
    @post280 = Post280.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post280 }
    end
  end

  # GET /post280s/new
  # GET /post280s/new.xml
  def new
    @post280 = Post280.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post280 }
    end
  end

  # GET /post280s/1/edit
  def edit
    @post280 = Post280.find(params[:id])
  end

  # POST /post280s
  # POST /post280s.xml
  def create
    @post280 = Post280.new(params[:post280])

    respond_to do |format|
      if @post280.save
        format.html { redirect_to(@post280, :notice => 'Post280 was successfully created.') }
        format.xml  { render :xml => @post280, :status => :created, :location => @post280 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post280.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post280s/1
  # PUT /post280s/1.xml
  def update
    @post280 = Post280.find(params[:id])

    respond_to do |format|
      if @post280.update_attributes(params[:post280])
        format.html { redirect_to(@post280, :notice => 'Post280 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post280.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post280s/1
  # DELETE /post280s/1.xml
  def destroy
    @post280 = Post280.find(params[:id])
    @post280.destroy

    respond_to do |format|
      format.html { redirect_to(post280s_url) }
      format.xml  { head :ok }
    end
  end
end
