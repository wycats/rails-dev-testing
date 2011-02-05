class Post66sController < ApplicationController
  # GET /post66s
  # GET /post66s.xml
  def index
    @post66s = Post66.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post66s }
    end
  end

  # GET /post66s/1
  # GET /post66s/1.xml
  def show
    @post66 = Post66.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post66 }
    end
  end

  # GET /post66s/new
  # GET /post66s/new.xml
  def new
    @post66 = Post66.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post66 }
    end
  end

  # GET /post66s/1/edit
  def edit
    @post66 = Post66.find(params[:id])
  end

  # POST /post66s
  # POST /post66s.xml
  def create
    @post66 = Post66.new(params[:post66])

    respond_to do |format|
      if @post66.save
        format.html { redirect_to(@post66, :notice => 'Post66 was successfully created.') }
        format.xml  { render :xml => @post66, :status => :created, :location => @post66 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post66.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post66s/1
  # PUT /post66s/1.xml
  def update
    @post66 = Post66.find(params[:id])

    respond_to do |format|
      if @post66.update_attributes(params[:post66])
        format.html { redirect_to(@post66, :notice => 'Post66 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post66.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post66s/1
  # DELETE /post66s/1.xml
  def destroy
    @post66 = Post66.find(params[:id])
    @post66.destroy

    respond_to do |format|
      format.html { redirect_to(post66s_url) }
      format.xml  { head :ok }
    end
  end
end
