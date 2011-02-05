class Post449sController < ApplicationController
  # GET /post449s
  # GET /post449s.xml
  def index
    @post449s = Post449.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post449s }
    end
  end

  # GET /post449s/1
  # GET /post449s/1.xml
  def show
    @post449 = Post449.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post449 }
    end
  end

  # GET /post449s/new
  # GET /post449s/new.xml
  def new
    @post449 = Post449.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post449 }
    end
  end

  # GET /post449s/1/edit
  def edit
    @post449 = Post449.find(params[:id])
  end

  # POST /post449s
  # POST /post449s.xml
  def create
    @post449 = Post449.new(params[:post449])

    respond_to do |format|
      if @post449.save
        format.html { redirect_to(@post449, :notice => 'Post449 was successfully created.') }
        format.xml  { render :xml => @post449, :status => :created, :location => @post449 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post449.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post449s/1
  # PUT /post449s/1.xml
  def update
    @post449 = Post449.find(params[:id])

    respond_to do |format|
      if @post449.update_attributes(params[:post449])
        format.html { redirect_to(@post449, :notice => 'Post449 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post449.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post449s/1
  # DELETE /post449s/1.xml
  def destroy
    @post449 = Post449.find(params[:id])
    @post449.destroy

    respond_to do |format|
      format.html { redirect_to(post449s_url) }
      format.xml  { head :ok }
    end
  end
end
