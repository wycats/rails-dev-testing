class Post334sController < ApplicationController
  # GET /post334s
  # GET /post334s.xml
  def index
    @post334s = Post334.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post334s }
    end
  end

  # GET /post334s/1
  # GET /post334s/1.xml
  def show
    @post334 = Post334.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post334 }
    end
  end

  # GET /post334s/new
  # GET /post334s/new.xml
  def new
    @post334 = Post334.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post334 }
    end
  end

  # GET /post334s/1/edit
  def edit
    @post334 = Post334.find(params[:id])
  end

  # POST /post334s
  # POST /post334s.xml
  def create
    @post334 = Post334.new(params[:post334])

    respond_to do |format|
      if @post334.save
        format.html { redirect_to(@post334, :notice => 'Post334 was successfully created.') }
        format.xml  { render :xml => @post334, :status => :created, :location => @post334 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post334.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post334s/1
  # PUT /post334s/1.xml
  def update
    @post334 = Post334.find(params[:id])

    respond_to do |format|
      if @post334.update_attributes(params[:post334])
        format.html { redirect_to(@post334, :notice => 'Post334 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post334.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post334s/1
  # DELETE /post334s/1.xml
  def destroy
    @post334 = Post334.find(params[:id])
    @post334.destroy

    respond_to do |format|
      format.html { redirect_to(post334s_url) }
      format.xml  { head :ok }
    end
  end
end
