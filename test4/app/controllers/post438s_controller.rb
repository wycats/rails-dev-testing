class Post438sController < ApplicationController
  # GET /post438s
  # GET /post438s.xml
  def index
    @post438s = Post438.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post438s }
    end
  end

  # GET /post438s/1
  # GET /post438s/1.xml
  def show
    @post438 = Post438.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post438 }
    end
  end

  # GET /post438s/new
  # GET /post438s/new.xml
  def new
    @post438 = Post438.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post438 }
    end
  end

  # GET /post438s/1/edit
  def edit
    @post438 = Post438.find(params[:id])
  end

  # POST /post438s
  # POST /post438s.xml
  def create
    @post438 = Post438.new(params[:post438])

    respond_to do |format|
      if @post438.save
        format.html { redirect_to(@post438, :notice => 'Post438 was successfully created.') }
        format.xml  { render :xml => @post438, :status => :created, :location => @post438 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post438.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post438s/1
  # PUT /post438s/1.xml
  def update
    @post438 = Post438.find(params[:id])

    respond_to do |format|
      if @post438.update_attributes(params[:post438])
        format.html { redirect_to(@post438, :notice => 'Post438 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post438.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post438s/1
  # DELETE /post438s/1.xml
  def destroy
    @post438 = Post438.find(params[:id])
    @post438.destroy

    respond_to do |format|
      format.html { redirect_to(post438s_url) }
      format.xml  { head :ok }
    end
  end
end
