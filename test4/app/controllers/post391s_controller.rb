class Post391sController < ApplicationController
  # GET /post391s
  # GET /post391s.xml
  def index
    @post391s = Post391.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post391s }
    end
  end

  # GET /post391s/1
  # GET /post391s/1.xml
  def show
    @post391 = Post391.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post391 }
    end
  end

  # GET /post391s/new
  # GET /post391s/new.xml
  def new
    @post391 = Post391.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post391 }
    end
  end

  # GET /post391s/1/edit
  def edit
    @post391 = Post391.find(params[:id])
  end

  # POST /post391s
  # POST /post391s.xml
  def create
    @post391 = Post391.new(params[:post391])

    respond_to do |format|
      if @post391.save
        format.html { redirect_to(@post391, :notice => 'Post391 was successfully created.') }
        format.xml  { render :xml => @post391, :status => :created, :location => @post391 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post391.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post391s/1
  # PUT /post391s/1.xml
  def update
    @post391 = Post391.find(params[:id])

    respond_to do |format|
      if @post391.update_attributes(params[:post391])
        format.html { redirect_to(@post391, :notice => 'Post391 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post391.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post391s/1
  # DELETE /post391s/1.xml
  def destroy
    @post391 = Post391.find(params[:id])
    @post391.destroy

    respond_to do |format|
      format.html { redirect_to(post391s_url) }
      format.xml  { head :ok }
    end
  end
end
