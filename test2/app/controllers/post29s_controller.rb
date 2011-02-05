class Post29sController < ApplicationController
  # GET /post29s
  # GET /post29s.xml
  def index
    @post29s = Post29.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post29s }
    end
  end

  # GET /post29s/1
  # GET /post29s/1.xml
  def show
    @post29 = Post29.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post29 }
    end
  end

  # GET /post29s/new
  # GET /post29s/new.xml
  def new
    @post29 = Post29.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post29 }
    end
  end

  # GET /post29s/1/edit
  def edit
    @post29 = Post29.find(params[:id])
  end

  # POST /post29s
  # POST /post29s.xml
  def create
    @post29 = Post29.new(params[:post29])

    respond_to do |format|
      if @post29.save
        format.html { redirect_to(@post29, :notice => 'Post29 was successfully created.') }
        format.xml  { render :xml => @post29, :status => :created, :location => @post29 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post29.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post29s/1
  # PUT /post29s/1.xml
  def update
    @post29 = Post29.find(params[:id])

    respond_to do |format|
      if @post29.update_attributes(params[:post29])
        format.html { redirect_to(@post29, :notice => 'Post29 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post29.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post29s/1
  # DELETE /post29s/1.xml
  def destroy
    @post29 = Post29.find(params[:id])
    @post29.destroy

    respond_to do |format|
      format.html { redirect_to(post29s_url) }
      format.xml  { head :ok }
    end
  end
end
