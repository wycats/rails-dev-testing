class Post448sController < ApplicationController
  # GET /post448s
  # GET /post448s.xml
  def index
    @post448s = Post448.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post448s }
    end
  end

  # GET /post448s/1
  # GET /post448s/1.xml
  def show
    @post448 = Post448.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post448 }
    end
  end

  # GET /post448s/new
  # GET /post448s/new.xml
  def new
    @post448 = Post448.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post448 }
    end
  end

  # GET /post448s/1/edit
  def edit
    @post448 = Post448.find(params[:id])
  end

  # POST /post448s
  # POST /post448s.xml
  def create
    @post448 = Post448.new(params[:post448])

    respond_to do |format|
      if @post448.save
        format.html { redirect_to(@post448, :notice => 'Post448 was successfully created.') }
        format.xml  { render :xml => @post448, :status => :created, :location => @post448 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post448.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post448s/1
  # PUT /post448s/1.xml
  def update
    @post448 = Post448.find(params[:id])

    respond_to do |format|
      if @post448.update_attributes(params[:post448])
        format.html { redirect_to(@post448, :notice => 'Post448 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post448.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post448s/1
  # DELETE /post448s/1.xml
  def destroy
    @post448 = Post448.find(params[:id])
    @post448.destroy

    respond_to do |format|
      format.html { redirect_to(post448s_url) }
      format.xml  { head :ok }
    end
  end
end
