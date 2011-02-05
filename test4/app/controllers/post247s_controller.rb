class Post247sController < ApplicationController
  # GET /post247s
  # GET /post247s.xml
  def index
    @post247s = Post247.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post247s }
    end
  end

  # GET /post247s/1
  # GET /post247s/1.xml
  def show
    @post247 = Post247.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post247 }
    end
  end

  # GET /post247s/new
  # GET /post247s/new.xml
  def new
    @post247 = Post247.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post247 }
    end
  end

  # GET /post247s/1/edit
  def edit
    @post247 = Post247.find(params[:id])
  end

  # POST /post247s
  # POST /post247s.xml
  def create
    @post247 = Post247.new(params[:post247])

    respond_to do |format|
      if @post247.save
        format.html { redirect_to(@post247, :notice => 'Post247 was successfully created.') }
        format.xml  { render :xml => @post247, :status => :created, :location => @post247 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post247.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post247s/1
  # PUT /post247s/1.xml
  def update
    @post247 = Post247.find(params[:id])

    respond_to do |format|
      if @post247.update_attributes(params[:post247])
        format.html { redirect_to(@post247, :notice => 'Post247 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post247.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post247s/1
  # DELETE /post247s/1.xml
  def destroy
    @post247 = Post247.find(params[:id])
    @post247.destroy

    respond_to do |format|
      format.html { redirect_to(post247s_url) }
      format.xml  { head :ok }
    end
  end
end
