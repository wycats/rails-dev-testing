class Post80sController < ApplicationController
  # GET /post80s
  # GET /post80s.xml
  def index
    @post80s = Post80.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post80s }
    end
  end

  # GET /post80s/1
  # GET /post80s/1.xml
  def show
    @post80 = Post80.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post80 }
    end
  end

  # GET /post80s/new
  # GET /post80s/new.xml
  def new
    @post80 = Post80.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post80 }
    end
  end

  # GET /post80s/1/edit
  def edit
    @post80 = Post80.find(params[:id])
  end

  # POST /post80s
  # POST /post80s.xml
  def create
    @post80 = Post80.new(params[:post80])

    respond_to do |format|
      if @post80.save
        format.html { redirect_to(@post80, :notice => 'Post80 was successfully created.') }
        format.xml  { render :xml => @post80, :status => :created, :location => @post80 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post80.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post80s/1
  # PUT /post80s/1.xml
  def update
    @post80 = Post80.find(params[:id])

    respond_to do |format|
      if @post80.update_attributes(params[:post80])
        format.html { redirect_to(@post80, :notice => 'Post80 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post80.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post80s/1
  # DELETE /post80s/1.xml
  def destroy
    @post80 = Post80.find(params[:id])
    @post80.destroy

    respond_to do |format|
      format.html { redirect_to(post80s_url) }
      format.xml  { head :ok }
    end
  end
end
