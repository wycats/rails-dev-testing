class Post47sController < ApplicationController
  # GET /post47s
  # GET /post47s.xml
  def index
    @post47s = Post47.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post47s }
    end
  end

  # GET /post47s/1
  # GET /post47s/1.xml
  def show
    @post47 = Post47.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post47 }
    end
  end

  # GET /post47s/new
  # GET /post47s/new.xml
  def new
    @post47 = Post47.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post47 }
    end
  end

  # GET /post47s/1/edit
  def edit
    @post47 = Post47.find(params[:id])
  end

  # POST /post47s
  # POST /post47s.xml
  def create
    @post47 = Post47.new(params[:post47])

    respond_to do |format|
      if @post47.save
        format.html { redirect_to(@post47, :notice => 'Post47 was successfully created.') }
        format.xml  { render :xml => @post47, :status => :created, :location => @post47 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post47.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post47s/1
  # PUT /post47s/1.xml
  def update
    @post47 = Post47.find(params[:id])

    respond_to do |format|
      if @post47.update_attributes(params[:post47])
        format.html { redirect_to(@post47, :notice => 'Post47 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post47.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post47s/1
  # DELETE /post47s/1.xml
  def destroy
    @post47 = Post47.find(params[:id])
    @post47.destroy

    respond_to do |format|
      format.html { redirect_to(post47s_url) }
      format.xml  { head :ok }
    end
  end
end
