class Post23sController < ApplicationController
  # GET /post23s
  # GET /post23s.xml
  def index
    @post23s = Post23.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post23s }
    end
  end

  # GET /post23s/1
  # GET /post23s/1.xml
  def show
    @post23 = Post23.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post23 }
    end
  end

  # GET /post23s/new
  # GET /post23s/new.xml
  def new
    @post23 = Post23.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post23 }
    end
  end

  # GET /post23s/1/edit
  def edit
    @post23 = Post23.find(params[:id])
  end

  # POST /post23s
  # POST /post23s.xml
  def create
    @post23 = Post23.new(params[:post23])

    respond_to do |format|
      if @post23.save
        format.html { redirect_to(@post23, :notice => 'Post23 was successfully created.') }
        format.xml  { render :xml => @post23, :status => :created, :location => @post23 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post23.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post23s/1
  # PUT /post23s/1.xml
  def update
    @post23 = Post23.find(params[:id])

    respond_to do |format|
      if @post23.update_attributes(params[:post23])
        format.html { redirect_to(@post23, :notice => 'Post23 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post23.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post23s/1
  # DELETE /post23s/1.xml
  def destroy
    @post23 = Post23.find(params[:id])
    @post23.destroy

    respond_to do |format|
      format.html { redirect_to(post23s_url) }
      format.xml  { head :ok }
    end
  end
end
