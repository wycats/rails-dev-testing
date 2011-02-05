class Post257sController < ApplicationController
  # GET /post257s
  # GET /post257s.xml
  def index
    @post257s = Post257.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post257s }
    end
  end

  # GET /post257s/1
  # GET /post257s/1.xml
  def show
    @post257 = Post257.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post257 }
    end
  end

  # GET /post257s/new
  # GET /post257s/new.xml
  def new
    @post257 = Post257.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post257 }
    end
  end

  # GET /post257s/1/edit
  def edit
    @post257 = Post257.find(params[:id])
  end

  # POST /post257s
  # POST /post257s.xml
  def create
    @post257 = Post257.new(params[:post257])

    respond_to do |format|
      if @post257.save
        format.html { redirect_to(@post257, :notice => 'Post257 was successfully created.') }
        format.xml  { render :xml => @post257, :status => :created, :location => @post257 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post257.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post257s/1
  # PUT /post257s/1.xml
  def update
    @post257 = Post257.find(params[:id])

    respond_to do |format|
      if @post257.update_attributes(params[:post257])
        format.html { redirect_to(@post257, :notice => 'Post257 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post257.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post257s/1
  # DELETE /post257s/1.xml
  def destroy
    @post257 = Post257.find(params[:id])
    @post257.destroy

    respond_to do |format|
      format.html { redirect_to(post257s_url) }
      format.xml  { head :ok }
    end
  end
end
