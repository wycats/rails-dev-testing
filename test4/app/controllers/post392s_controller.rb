class Post392sController < ApplicationController
  # GET /post392s
  # GET /post392s.xml
  def index
    @post392s = Post392.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post392s }
    end
  end

  # GET /post392s/1
  # GET /post392s/1.xml
  def show
    @post392 = Post392.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post392 }
    end
  end

  # GET /post392s/new
  # GET /post392s/new.xml
  def new
    @post392 = Post392.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post392 }
    end
  end

  # GET /post392s/1/edit
  def edit
    @post392 = Post392.find(params[:id])
  end

  # POST /post392s
  # POST /post392s.xml
  def create
    @post392 = Post392.new(params[:post392])

    respond_to do |format|
      if @post392.save
        format.html { redirect_to(@post392, :notice => 'Post392 was successfully created.') }
        format.xml  { render :xml => @post392, :status => :created, :location => @post392 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post392.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post392s/1
  # PUT /post392s/1.xml
  def update
    @post392 = Post392.find(params[:id])

    respond_to do |format|
      if @post392.update_attributes(params[:post392])
        format.html { redirect_to(@post392, :notice => 'Post392 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post392.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post392s/1
  # DELETE /post392s/1.xml
  def destroy
    @post392 = Post392.find(params[:id])
    @post392.destroy

    respond_to do |format|
      format.html { redirect_to(post392s_url) }
      format.xml  { head :ok }
    end
  end
end
