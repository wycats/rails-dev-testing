class Post292sController < ApplicationController
  # GET /post292s
  # GET /post292s.xml
  def index
    @post292s = Post292.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post292s }
    end
  end

  # GET /post292s/1
  # GET /post292s/1.xml
  def show
    @post292 = Post292.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post292 }
    end
  end

  # GET /post292s/new
  # GET /post292s/new.xml
  def new
    @post292 = Post292.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post292 }
    end
  end

  # GET /post292s/1/edit
  def edit
    @post292 = Post292.find(params[:id])
  end

  # POST /post292s
  # POST /post292s.xml
  def create
    @post292 = Post292.new(params[:post292])

    respond_to do |format|
      if @post292.save
        format.html { redirect_to(@post292, :notice => 'Post292 was successfully created.') }
        format.xml  { render :xml => @post292, :status => :created, :location => @post292 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post292.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post292s/1
  # PUT /post292s/1.xml
  def update
    @post292 = Post292.find(params[:id])

    respond_to do |format|
      if @post292.update_attributes(params[:post292])
        format.html { redirect_to(@post292, :notice => 'Post292 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post292.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post292s/1
  # DELETE /post292s/1.xml
  def destroy
    @post292 = Post292.find(params[:id])
    @post292.destroy

    respond_to do |format|
      format.html { redirect_to(post292s_url) }
      format.xml  { head :ok }
    end
  end
end
