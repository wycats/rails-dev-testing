class Post244sController < ApplicationController
  # GET /post244s
  # GET /post244s.xml
  def index
    @post244s = Post244.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post244s }
    end
  end

  # GET /post244s/1
  # GET /post244s/1.xml
  def show
    @post244 = Post244.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post244 }
    end
  end

  # GET /post244s/new
  # GET /post244s/new.xml
  def new
    @post244 = Post244.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post244 }
    end
  end

  # GET /post244s/1/edit
  def edit
    @post244 = Post244.find(params[:id])
  end

  # POST /post244s
  # POST /post244s.xml
  def create
    @post244 = Post244.new(params[:post244])

    respond_to do |format|
      if @post244.save
        format.html { redirect_to(@post244, :notice => 'Post244 was successfully created.') }
        format.xml  { render :xml => @post244, :status => :created, :location => @post244 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post244.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post244s/1
  # PUT /post244s/1.xml
  def update
    @post244 = Post244.find(params[:id])

    respond_to do |format|
      if @post244.update_attributes(params[:post244])
        format.html { redirect_to(@post244, :notice => 'Post244 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post244.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post244s/1
  # DELETE /post244s/1.xml
  def destroy
    @post244 = Post244.find(params[:id])
    @post244.destroy

    respond_to do |format|
      format.html { redirect_to(post244s_url) }
      format.xml  { head :ok }
    end
  end
end
