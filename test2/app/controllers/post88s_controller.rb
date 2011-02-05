class Post88sController < ApplicationController
  # GET /post88s
  # GET /post88s.xml
  def index
    @post88s = Post88.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post88s }
    end
  end

  # GET /post88s/1
  # GET /post88s/1.xml
  def show
    @post88 = Post88.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post88 }
    end
  end

  # GET /post88s/new
  # GET /post88s/new.xml
  def new
    @post88 = Post88.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post88 }
    end
  end

  # GET /post88s/1/edit
  def edit
    @post88 = Post88.find(params[:id])
  end

  # POST /post88s
  # POST /post88s.xml
  def create
    @post88 = Post88.new(params[:post88])

    respond_to do |format|
      if @post88.save
        format.html { redirect_to(@post88, :notice => 'Post88 was successfully created.') }
        format.xml  { render :xml => @post88, :status => :created, :location => @post88 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post88.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post88s/1
  # PUT /post88s/1.xml
  def update
    @post88 = Post88.find(params[:id])

    respond_to do |format|
      if @post88.update_attributes(params[:post88])
        format.html { redirect_to(@post88, :notice => 'Post88 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post88.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post88s/1
  # DELETE /post88s/1.xml
  def destroy
    @post88 = Post88.find(params[:id])
    @post88.destroy

    respond_to do |format|
      format.html { redirect_to(post88s_url) }
      format.xml  { head :ok }
    end
  end
end
