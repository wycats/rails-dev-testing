class Post433sController < ApplicationController
  # GET /post433s
  # GET /post433s.xml
  def index
    @post433s = Post433.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post433s }
    end
  end

  # GET /post433s/1
  # GET /post433s/1.xml
  def show
    @post433 = Post433.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post433 }
    end
  end

  # GET /post433s/new
  # GET /post433s/new.xml
  def new
    @post433 = Post433.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post433 }
    end
  end

  # GET /post433s/1/edit
  def edit
    @post433 = Post433.find(params[:id])
  end

  # POST /post433s
  # POST /post433s.xml
  def create
    @post433 = Post433.new(params[:post433])

    respond_to do |format|
      if @post433.save
        format.html { redirect_to(@post433, :notice => 'Post433 was successfully created.') }
        format.xml  { render :xml => @post433, :status => :created, :location => @post433 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post433.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post433s/1
  # PUT /post433s/1.xml
  def update
    @post433 = Post433.find(params[:id])

    respond_to do |format|
      if @post433.update_attributes(params[:post433])
        format.html { redirect_to(@post433, :notice => 'Post433 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post433.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post433s/1
  # DELETE /post433s/1.xml
  def destroy
    @post433 = Post433.find(params[:id])
    @post433.destroy

    respond_to do |format|
      format.html { redirect_to(post433s_url) }
      format.xml  { head :ok }
    end
  end
end
