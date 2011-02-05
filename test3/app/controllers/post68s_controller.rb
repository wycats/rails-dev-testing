class Post68sController < ApplicationController
  # GET /post68s
  # GET /post68s.xml
  def index
    @post68s = Post68.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post68s }
    end
  end

  # GET /post68s/1
  # GET /post68s/1.xml
  def show
    @post68 = Post68.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post68 }
    end
  end

  # GET /post68s/new
  # GET /post68s/new.xml
  def new
    @post68 = Post68.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post68 }
    end
  end

  # GET /post68s/1/edit
  def edit
    @post68 = Post68.find(params[:id])
  end

  # POST /post68s
  # POST /post68s.xml
  def create
    @post68 = Post68.new(params[:post68])

    respond_to do |format|
      if @post68.save
        format.html { redirect_to(@post68, :notice => 'Post68 was successfully created.') }
        format.xml  { render :xml => @post68, :status => :created, :location => @post68 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post68.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post68s/1
  # PUT /post68s/1.xml
  def update
    @post68 = Post68.find(params[:id])

    respond_to do |format|
      if @post68.update_attributes(params[:post68])
        format.html { redirect_to(@post68, :notice => 'Post68 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post68.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post68s/1
  # DELETE /post68s/1.xml
  def destroy
    @post68 = Post68.find(params[:id])
    @post68.destroy

    respond_to do |format|
      format.html { redirect_to(post68s_url) }
      format.xml  { head :ok }
    end
  end
end
