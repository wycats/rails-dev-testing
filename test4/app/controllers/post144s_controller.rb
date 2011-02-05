class Post144sController < ApplicationController
  # GET /post144s
  # GET /post144s.xml
  def index
    @post144s = Post144.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post144s }
    end
  end

  # GET /post144s/1
  # GET /post144s/1.xml
  def show
    @post144 = Post144.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post144 }
    end
  end

  # GET /post144s/new
  # GET /post144s/new.xml
  def new
    @post144 = Post144.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post144 }
    end
  end

  # GET /post144s/1/edit
  def edit
    @post144 = Post144.find(params[:id])
  end

  # POST /post144s
  # POST /post144s.xml
  def create
    @post144 = Post144.new(params[:post144])

    respond_to do |format|
      if @post144.save
        format.html { redirect_to(@post144, :notice => 'Post144 was successfully created.') }
        format.xml  { render :xml => @post144, :status => :created, :location => @post144 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post144.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post144s/1
  # PUT /post144s/1.xml
  def update
    @post144 = Post144.find(params[:id])

    respond_to do |format|
      if @post144.update_attributes(params[:post144])
        format.html { redirect_to(@post144, :notice => 'Post144 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post144.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post144s/1
  # DELETE /post144s/1.xml
  def destroy
    @post144 = Post144.find(params[:id])
    @post144.destroy

    respond_to do |format|
      format.html { redirect_to(post144s_url) }
      format.xml  { head :ok }
    end
  end
end
