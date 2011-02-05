class Post252sController < ApplicationController
  # GET /post252s
  # GET /post252s.xml
  def index
    @post252s = Post252.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post252s }
    end
  end

  # GET /post252s/1
  # GET /post252s/1.xml
  def show
    @post252 = Post252.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post252 }
    end
  end

  # GET /post252s/new
  # GET /post252s/new.xml
  def new
    @post252 = Post252.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post252 }
    end
  end

  # GET /post252s/1/edit
  def edit
    @post252 = Post252.find(params[:id])
  end

  # POST /post252s
  # POST /post252s.xml
  def create
    @post252 = Post252.new(params[:post252])

    respond_to do |format|
      if @post252.save
        format.html { redirect_to(@post252, :notice => 'Post252 was successfully created.') }
        format.xml  { render :xml => @post252, :status => :created, :location => @post252 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post252.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post252s/1
  # PUT /post252s/1.xml
  def update
    @post252 = Post252.find(params[:id])

    respond_to do |format|
      if @post252.update_attributes(params[:post252])
        format.html { redirect_to(@post252, :notice => 'Post252 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post252.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post252s/1
  # DELETE /post252s/1.xml
  def destroy
    @post252 = Post252.find(params[:id])
    @post252.destroy

    respond_to do |format|
      format.html { redirect_to(post252s_url) }
      format.xml  { head :ok }
    end
  end
end
