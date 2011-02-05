class Post378sController < ApplicationController
  # GET /post378s
  # GET /post378s.xml
  def index
    @post378s = Post378.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post378s }
    end
  end

  # GET /post378s/1
  # GET /post378s/1.xml
  def show
    @post378 = Post378.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post378 }
    end
  end

  # GET /post378s/new
  # GET /post378s/new.xml
  def new
    @post378 = Post378.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post378 }
    end
  end

  # GET /post378s/1/edit
  def edit
    @post378 = Post378.find(params[:id])
  end

  # POST /post378s
  # POST /post378s.xml
  def create
    @post378 = Post378.new(params[:post378])

    respond_to do |format|
      if @post378.save
        format.html { redirect_to(@post378, :notice => 'Post378 was successfully created.') }
        format.xml  { render :xml => @post378, :status => :created, :location => @post378 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post378.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post378s/1
  # PUT /post378s/1.xml
  def update
    @post378 = Post378.find(params[:id])

    respond_to do |format|
      if @post378.update_attributes(params[:post378])
        format.html { redirect_to(@post378, :notice => 'Post378 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post378.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post378s/1
  # DELETE /post378s/1.xml
  def destroy
    @post378 = Post378.find(params[:id])
    @post378.destroy

    respond_to do |format|
      format.html { redirect_to(post378s_url) }
      format.xml  { head :ok }
    end
  end
end
