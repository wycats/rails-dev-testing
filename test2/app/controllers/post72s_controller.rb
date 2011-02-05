class Post72sController < ApplicationController
  # GET /post72s
  # GET /post72s.xml
  def index
    @post72s = Post72.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post72s }
    end
  end

  # GET /post72s/1
  # GET /post72s/1.xml
  def show
    @post72 = Post72.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post72 }
    end
  end

  # GET /post72s/new
  # GET /post72s/new.xml
  def new
    @post72 = Post72.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post72 }
    end
  end

  # GET /post72s/1/edit
  def edit
    @post72 = Post72.find(params[:id])
  end

  # POST /post72s
  # POST /post72s.xml
  def create
    @post72 = Post72.new(params[:post72])

    respond_to do |format|
      if @post72.save
        format.html { redirect_to(@post72, :notice => 'Post72 was successfully created.') }
        format.xml  { render :xml => @post72, :status => :created, :location => @post72 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post72.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post72s/1
  # PUT /post72s/1.xml
  def update
    @post72 = Post72.find(params[:id])

    respond_to do |format|
      if @post72.update_attributes(params[:post72])
        format.html { redirect_to(@post72, :notice => 'Post72 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post72.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post72s/1
  # DELETE /post72s/1.xml
  def destroy
    @post72 = Post72.find(params[:id])
    @post72.destroy

    respond_to do |format|
      format.html { redirect_to(post72s_url) }
      format.xml  { head :ok }
    end
  end
end
