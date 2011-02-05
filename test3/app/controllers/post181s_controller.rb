class Post181sController < ApplicationController
  # GET /post181s
  # GET /post181s.xml
  def index
    @post181s = Post181.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post181s }
    end
  end

  # GET /post181s/1
  # GET /post181s/1.xml
  def show
    @post181 = Post181.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post181 }
    end
  end

  # GET /post181s/new
  # GET /post181s/new.xml
  def new
    @post181 = Post181.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post181 }
    end
  end

  # GET /post181s/1/edit
  def edit
    @post181 = Post181.find(params[:id])
  end

  # POST /post181s
  # POST /post181s.xml
  def create
    @post181 = Post181.new(params[:post181])

    respond_to do |format|
      if @post181.save
        format.html { redirect_to(@post181, :notice => 'Post181 was successfully created.') }
        format.xml  { render :xml => @post181, :status => :created, :location => @post181 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post181.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post181s/1
  # PUT /post181s/1.xml
  def update
    @post181 = Post181.find(params[:id])

    respond_to do |format|
      if @post181.update_attributes(params[:post181])
        format.html { redirect_to(@post181, :notice => 'Post181 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post181.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post181s/1
  # DELETE /post181s/1.xml
  def destroy
    @post181 = Post181.find(params[:id])
    @post181.destroy

    respond_to do |format|
      format.html { redirect_to(post181s_url) }
      format.xml  { head :ok }
    end
  end
end
