class Post459sController < ApplicationController
  # GET /post459s
  # GET /post459s.xml
  def index
    @post459s = Post459.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post459s }
    end
  end

  # GET /post459s/1
  # GET /post459s/1.xml
  def show
    @post459 = Post459.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post459 }
    end
  end

  # GET /post459s/new
  # GET /post459s/new.xml
  def new
    @post459 = Post459.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post459 }
    end
  end

  # GET /post459s/1/edit
  def edit
    @post459 = Post459.find(params[:id])
  end

  # POST /post459s
  # POST /post459s.xml
  def create
    @post459 = Post459.new(params[:post459])

    respond_to do |format|
      if @post459.save
        format.html { redirect_to(@post459, :notice => 'Post459 was successfully created.') }
        format.xml  { render :xml => @post459, :status => :created, :location => @post459 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post459.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post459s/1
  # PUT /post459s/1.xml
  def update
    @post459 = Post459.find(params[:id])

    respond_to do |format|
      if @post459.update_attributes(params[:post459])
        format.html { redirect_to(@post459, :notice => 'Post459 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post459.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post459s/1
  # DELETE /post459s/1.xml
  def destroy
    @post459 = Post459.find(params[:id])
    @post459.destroy

    respond_to do |format|
      format.html { redirect_to(post459s_url) }
      format.xml  { head :ok }
    end
  end
end
