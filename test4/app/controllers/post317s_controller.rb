class Post317sController < ApplicationController
  # GET /post317s
  # GET /post317s.xml
  def index
    @post317s = Post317.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post317s }
    end
  end

  # GET /post317s/1
  # GET /post317s/1.xml
  def show
    @post317 = Post317.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post317 }
    end
  end

  # GET /post317s/new
  # GET /post317s/new.xml
  def new
    @post317 = Post317.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post317 }
    end
  end

  # GET /post317s/1/edit
  def edit
    @post317 = Post317.find(params[:id])
  end

  # POST /post317s
  # POST /post317s.xml
  def create
    @post317 = Post317.new(params[:post317])

    respond_to do |format|
      if @post317.save
        format.html { redirect_to(@post317, :notice => 'Post317 was successfully created.') }
        format.xml  { render :xml => @post317, :status => :created, :location => @post317 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post317.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post317s/1
  # PUT /post317s/1.xml
  def update
    @post317 = Post317.find(params[:id])

    respond_to do |format|
      if @post317.update_attributes(params[:post317])
        format.html { redirect_to(@post317, :notice => 'Post317 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post317.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post317s/1
  # DELETE /post317s/1.xml
  def destroy
    @post317 = Post317.find(params[:id])
    @post317.destroy

    respond_to do |format|
      format.html { redirect_to(post317s_url) }
      format.xml  { head :ok }
    end
  end
end
