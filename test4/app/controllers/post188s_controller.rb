class Post188sController < ApplicationController
  # GET /post188s
  # GET /post188s.xml
  def index
    @post188s = Post188.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post188s }
    end
  end

  # GET /post188s/1
  # GET /post188s/1.xml
  def show
    @post188 = Post188.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post188 }
    end
  end

  # GET /post188s/new
  # GET /post188s/new.xml
  def new
    @post188 = Post188.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post188 }
    end
  end

  # GET /post188s/1/edit
  def edit
    @post188 = Post188.find(params[:id])
  end

  # POST /post188s
  # POST /post188s.xml
  def create
    @post188 = Post188.new(params[:post188])

    respond_to do |format|
      if @post188.save
        format.html { redirect_to(@post188, :notice => 'Post188 was successfully created.') }
        format.xml  { render :xml => @post188, :status => :created, :location => @post188 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post188.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post188s/1
  # PUT /post188s/1.xml
  def update
    @post188 = Post188.find(params[:id])

    respond_to do |format|
      if @post188.update_attributes(params[:post188])
        format.html { redirect_to(@post188, :notice => 'Post188 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post188.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post188s/1
  # DELETE /post188s/1.xml
  def destroy
    @post188 = Post188.find(params[:id])
    @post188.destroy

    respond_to do |format|
      format.html { redirect_to(post188s_url) }
      format.xml  { head :ok }
    end
  end
end
