class Post485sController < ApplicationController
  # GET /post485s
  # GET /post485s.xml
  def index
    @post485s = Post485.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post485s }
    end
  end

  # GET /post485s/1
  # GET /post485s/1.xml
  def show
    @post485 = Post485.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post485 }
    end
  end

  # GET /post485s/new
  # GET /post485s/new.xml
  def new
    @post485 = Post485.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post485 }
    end
  end

  # GET /post485s/1/edit
  def edit
    @post485 = Post485.find(params[:id])
  end

  # POST /post485s
  # POST /post485s.xml
  def create
    @post485 = Post485.new(params[:post485])

    respond_to do |format|
      if @post485.save
        format.html { redirect_to(@post485, :notice => 'Post485 was successfully created.') }
        format.xml  { render :xml => @post485, :status => :created, :location => @post485 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post485.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post485s/1
  # PUT /post485s/1.xml
  def update
    @post485 = Post485.find(params[:id])

    respond_to do |format|
      if @post485.update_attributes(params[:post485])
        format.html { redirect_to(@post485, :notice => 'Post485 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post485.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post485s/1
  # DELETE /post485s/1.xml
  def destroy
    @post485 = Post485.find(params[:id])
    @post485.destroy

    respond_to do |format|
      format.html { redirect_to(post485s_url) }
      format.xml  { head :ok }
    end
  end
end
