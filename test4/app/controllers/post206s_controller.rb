class Post206sController < ApplicationController
  # GET /post206s
  # GET /post206s.xml
  def index
    @post206s = Post206.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post206s }
    end
  end

  # GET /post206s/1
  # GET /post206s/1.xml
  def show
    @post206 = Post206.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post206 }
    end
  end

  # GET /post206s/new
  # GET /post206s/new.xml
  def new
    @post206 = Post206.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post206 }
    end
  end

  # GET /post206s/1/edit
  def edit
    @post206 = Post206.find(params[:id])
  end

  # POST /post206s
  # POST /post206s.xml
  def create
    @post206 = Post206.new(params[:post206])

    respond_to do |format|
      if @post206.save
        format.html { redirect_to(@post206, :notice => 'Post206 was successfully created.') }
        format.xml  { render :xml => @post206, :status => :created, :location => @post206 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post206.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post206s/1
  # PUT /post206s/1.xml
  def update
    @post206 = Post206.find(params[:id])

    respond_to do |format|
      if @post206.update_attributes(params[:post206])
        format.html { redirect_to(@post206, :notice => 'Post206 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post206.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post206s/1
  # DELETE /post206s/1.xml
  def destroy
    @post206 = Post206.find(params[:id])
    @post206.destroy

    respond_to do |format|
      format.html { redirect_to(post206s_url) }
      format.xml  { head :ok }
    end
  end
end
