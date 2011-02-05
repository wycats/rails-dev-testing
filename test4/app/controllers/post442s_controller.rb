class Post442sController < ApplicationController
  # GET /post442s
  # GET /post442s.xml
  def index
    @post442s = Post442.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post442s }
    end
  end

  # GET /post442s/1
  # GET /post442s/1.xml
  def show
    @post442 = Post442.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post442 }
    end
  end

  # GET /post442s/new
  # GET /post442s/new.xml
  def new
    @post442 = Post442.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post442 }
    end
  end

  # GET /post442s/1/edit
  def edit
    @post442 = Post442.find(params[:id])
  end

  # POST /post442s
  # POST /post442s.xml
  def create
    @post442 = Post442.new(params[:post442])

    respond_to do |format|
      if @post442.save
        format.html { redirect_to(@post442, :notice => 'Post442 was successfully created.') }
        format.xml  { render :xml => @post442, :status => :created, :location => @post442 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post442.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post442s/1
  # PUT /post442s/1.xml
  def update
    @post442 = Post442.find(params[:id])

    respond_to do |format|
      if @post442.update_attributes(params[:post442])
        format.html { redirect_to(@post442, :notice => 'Post442 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post442.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post442s/1
  # DELETE /post442s/1.xml
  def destroy
    @post442 = Post442.find(params[:id])
    @post442.destroy

    respond_to do |format|
      format.html { redirect_to(post442s_url) }
      format.xml  { head :ok }
    end
  end
end
