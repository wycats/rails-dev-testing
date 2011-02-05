class Post42sController < ApplicationController
  # GET /post42s
  # GET /post42s.xml
  def index
    @post42s = Post42.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post42s }
    end
  end

  # GET /post42s/1
  # GET /post42s/1.xml
  def show
    @post42 = Post42.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post42 }
    end
  end

  # GET /post42s/new
  # GET /post42s/new.xml
  def new
    @post42 = Post42.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post42 }
    end
  end

  # GET /post42s/1/edit
  def edit
    @post42 = Post42.find(params[:id])
  end

  # POST /post42s
  # POST /post42s.xml
  def create
    @post42 = Post42.new(params[:post42])

    respond_to do |format|
      if @post42.save
        format.html { redirect_to(@post42, :notice => 'Post42 was successfully created.') }
        format.xml  { render :xml => @post42, :status => :created, :location => @post42 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post42.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post42s/1
  # PUT /post42s/1.xml
  def update
    @post42 = Post42.find(params[:id])

    respond_to do |format|
      if @post42.update_attributes(params[:post42])
        format.html { redirect_to(@post42, :notice => 'Post42 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post42.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post42s/1
  # DELETE /post42s/1.xml
  def destroy
    @post42 = Post42.find(params[:id])
    @post42.destroy

    respond_to do |format|
      format.html { redirect_to(post42s_url) }
      format.xml  { head :ok }
    end
  end
end
