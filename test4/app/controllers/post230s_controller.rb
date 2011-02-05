class Post230sController < ApplicationController
  # GET /post230s
  # GET /post230s.xml
  def index
    @post230s = Post230.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post230s }
    end
  end

  # GET /post230s/1
  # GET /post230s/1.xml
  def show
    @post230 = Post230.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post230 }
    end
  end

  # GET /post230s/new
  # GET /post230s/new.xml
  def new
    @post230 = Post230.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post230 }
    end
  end

  # GET /post230s/1/edit
  def edit
    @post230 = Post230.find(params[:id])
  end

  # POST /post230s
  # POST /post230s.xml
  def create
    @post230 = Post230.new(params[:post230])

    respond_to do |format|
      if @post230.save
        format.html { redirect_to(@post230, :notice => 'Post230 was successfully created.') }
        format.xml  { render :xml => @post230, :status => :created, :location => @post230 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post230.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post230s/1
  # PUT /post230s/1.xml
  def update
    @post230 = Post230.find(params[:id])

    respond_to do |format|
      if @post230.update_attributes(params[:post230])
        format.html { redirect_to(@post230, :notice => 'Post230 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post230.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post230s/1
  # DELETE /post230s/1.xml
  def destroy
    @post230 = Post230.find(params[:id])
    @post230.destroy

    respond_to do |format|
      format.html { redirect_to(post230s_url) }
      format.xml  { head :ok }
    end
  end
end
