class Post363sController < ApplicationController
  # GET /post363s
  # GET /post363s.xml
  def index
    @post363s = Post363.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post363s }
    end
  end

  # GET /post363s/1
  # GET /post363s/1.xml
  def show
    @post363 = Post363.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post363 }
    end
  end

  # GET /post363s/new
  # GET /post363s/new.xml
  def new
    @post363 = Post363.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post363 }
    end
  end

  # GET /post363s/1/edit
  def edit
    @post363 = Post363.find(params[:id])
  end

  # POST /post363s
  # POST /post363s.xml
  def create
    @post363 = Post363.new(params[:post363])

    respond_to do |format|
      if @post363.save
        format.html { redirect_to(@post363, :notice => 'Post363 was successfully created.') }
        format.xml  { render :xml => @post363, :status => :created, :location => @post363 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post363.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post363s/1
  # PUT /post363s/1.xml
  def update
    @post363 = Post363.find(params[:id])

    respond_to do |format|
      if @post363.update_attributes(params[:post363])
        format.html { redirect_to(@post363, :notice => 'Post363 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post363.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post363s/1
  # DELETE /post363s/1.xml
  def destroy
    @post363 = Post363.find(params[:id])
    @post363.destroy

    respond_to do |format|
      format.html { redirect_to(post363s_url) }
      format.xml  { head :ok }
    end
  end
end
