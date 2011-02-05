class Post410sController < ApplicationController
  # GET /post410s
  # GET /post410s.xml
  def index
    @post410s = Post410.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post410s }
    end
  end

  # GET /post410s/1
  # GET /post410s/1.xml
  def show
    @post410 = Post410.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post410 }
    end
  end

  # GET /post410s/new
  # GET /post410s/new.xml
  def new
    @post410 = Post410.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post410 }
    end
  end

  # GET /post410s/1/edit
  def edit
    @post410 = Post410.find(params[:id])
  end

  # POST /post410s
  # POST /post410s.xml
  def create
    @post410 = Post410.new(params[:post410])

    respond_to do |format|
      if @post410.save
        format.html { redirect_to(@post410, :notice => 'Post410 was successfully created.') }
        format.xml  { render :xml => @post410, :status => :created, :location => @post410 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post410.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post410s/1
  # PUT /post410s/1.xml
  def update
    @post410 = Post410.find(params[:id])

    respond_to do |format|
      if @post410.update_attributes(params[:post410])
        format.html { redirect_to(@post410, :notice => 'Post410 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post410.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post410s/1
  # DELETE /post410s/1.xml
  def destroy
    @post410 = Post410.find(params[:id])
    @post410.destroy

    respond_to do |format|
      format.html { redirect_to(post410s_url) }
      format.xml  { head :ok }
    end
  end
end
