class Post125sController < ApplicationController
  # GET /post125s
  # GET /post125s.xml
  def index
    @post125s = Post125.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post125s }
    end
  end

  # GET /post125s/1
  # GET /post125s/1.xml
  def show
    @post125 = Post125.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post125 }
    end
  end

  # GET /post125s/new
  # GET /post125s/new.xml
  def new
    @post125 = Post125.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post125 }
    end
  end

  # GET /post125s/1/edit
  def edit
    @post125 = Post125.find(params[:id])
  end

  # POST /post125s
  # POST /post125s.xml
  def create
    @post125 = Post125.new(params[:post125])

    respond_to do |format|
      if @post125.save
        format.html { redirect_to(@post125, :notice => 'Post125 was successfully created.') }
        format.xml  { render :xml => @post125, :status => :created, :location => @post125 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post125.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post125s/1
  # PUT /post125s/1.xml
  def update
    @post125 = Post125.find(params[:id])

    respond_to do |format|
      if @post125.update_attributes(params[:post125])
        format.html { redirect_to(@post125, :notice => 'Post125 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post125.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post125s/1
  # DELETE /post125s/1.xml
  def destroy
    @post125 = Post125.find(params[:id])
    @post125.destroy

    respond_to do |format|
      format.html { redirect_to(post125s_url) }
      format.xml  { head :ok }
    end
  end
end
