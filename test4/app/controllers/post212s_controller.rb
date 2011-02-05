class Post212sController < ApplicationController
  # GET /post212s
  # GET /post212s.xml
  def index
    @post212s = Post212.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post212s }
    end
  end

  # GET /post212s/1
  # GET /post212s/1.xml
  def show
    @post212 = Post212.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post212 }
    end
  end

  # GET /post212s/new
  # GET /post212s/new.xml
  def new
    @post212 = Post212.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post212 }
    end
  end

  # GET /post212s/1/edit
  def edit
    @post212 = Post212.find(params[:id])
  end

  # POST /post212s
  # POST /post212s.xml
  def create
    @post212 = Post212.new(params[:post212])

    respond_to do |format|
      if @post212.save
        format.html { redirect_to(@post212, :notice => 'Post212 was successfully created.') }
        format.xml  { render :xml => @post212, :status => :created, :location => @post212 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post212.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post212s/1
  # PUT /post212s/1.xml
  def update
    @post212 = Post212.find(params[:id])

    respond_to do |format|
      if @post212.update_attributes(params[:post212])
        format.html { redirect_to(@post212, :notice => 'Post212 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post212.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post212s/1
  # DELETE /post212s/1.xml
  def destroy
    @post212 = Post212.find(params[:id])
    @post212.destroy

    respond_to do |format|
      format.html { redirect_to(post212s_url) }
      format.xml  { head :ok }
    end
  end
end
