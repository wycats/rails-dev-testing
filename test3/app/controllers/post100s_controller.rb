class Post100sController < ApplicationController
  # GET /post100s
  # GET /post100s.xml
  def index
    @post100s = Post100.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post100s }
    end
  end

  # GET /post100s/1
  # GET /post100s/1.xml
  def show
    @post100 = Post100.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post100 }
    end
  end

  # GET /post100s/new
  # GET /post100s/new.xml
  def new
    @post100 = Post100.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post100 }
    end
  end

  # GET /post100s/1/edit
  def edit
    @post100 = Post100.find(params[:id])
  end

  # POST /post100s
  # POST /post100s.xml
  def create
    @post100 = Post100.new(params[:post100])

    respond_to do |format|
      if @post100.save
        format.html { redirect_to(@post100, :notice => 'Post100 was successfully created.') }
        format.xml  { render :xml => @post100, :status => :created, :location => @post100 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post100.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post100s/1
  # PUT /post100s/1.xml
  def update
    @post100 = Post100.find(params[:id])

    respond_to do |format|
      if @post100.update_attributes(params[:post100])
        format.html { redirect_to(@post100, :notice => 'Post100 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post100.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post100s/1
  # DELETE /post100s/1.xml
  def destroy
    @post100 = Post100.find(params[:id])
    @post100.destroy

    respond_to do |format|
      format.html { redirect_to(post100s_url) }
      format.xml  { head :ok }
    end
  end
end
