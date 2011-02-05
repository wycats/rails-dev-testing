class Post371sController < ApplicationController
  # GET /post371s
  # GET /post371s.xml
  def index
    @post371s = Post371.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post371s }
    end
  end

  # GET /post371s/1
  # GET /post371s/1.xml
  def show
    @post371 = Post371.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post371 }
    end
  end

  # GET /post371s/new
  # GET /post371s/new.xml
  def new
    @post371 = Post371.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post371 }
    end
  end

  # GET /post371s/1/edit
  def edit
    @post371 = Post371.find(params[:id])
  end

  # POST /post371s
  # POST /post371s.xml
  def create
    @post371 = Post371.new(params[:post371])

    respond_to do |format|
      if @post371.save
        format.html { redirect_to(@post371, :notice => 'Post371 was successfully created.') }
        format.xml  { render :xml => @post371, :status => :created, :location => @post371 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post371.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post371s/1
  # PUT /post371s/1.xml
  def update
    @post371 = Post371.find(params[:id])

    respond_to do |format|
      if @post371.update_attributes(params[:post371])
        format.html { redirect_to(@post371, :notice => 'Post371 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post371.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post371s/1
  # DELETE /post371s/1.xml
  def destroy
    @post371 = Post371.find(params[:id])
    @post371.destroy

    respond_to do |format|
      format.html { redirect_to(post371s_url) }
      format.xml  { head :ok }
    end
  end
end
