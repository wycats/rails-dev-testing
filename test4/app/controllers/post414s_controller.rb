class Post414sController < ApplicationController
  # GET /post414s
  # GET /post414s.xml
  def index
    @post414s = Post414.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post414s }
    end
  end

  # GET /post414s/1
  # GET /post414s/1.xml
  def show
    @post414 = Post414.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post414 }
    end
  end

  # GET /post414s/new
  # GET /post414s/new.xml
  def new
    @post414 = Post414.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post414 }
    end
  end

  # GET /post414s/1/edit
  def edit
    @post414 = Post414.find(params[:id])
  end

  # POST /post414s
  # POST /post414s.xml
  def create
    @post414 = Post414.new(params[:post414])

    respond_to do |format|
      if @post414.save
        format.html { redirect_to(@post414, :notice => 'Post414 was successfully created.') }
        format.xml  { render :xml => @post414, :status => :created, :location => @post414 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post414.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post414s/1
  # PUT /post414s/1.xml
  def update
    @post414 = Post414.find(params[:id])

    respond_to do |format|
      if @post414.update_attributes(params[:post414])
        format.html { redirect_to(@post414, :notice => 'Post414 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post414.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post414s/1
  # DELETE /post414s/1.xml
  def destroy
    @post414 = Post414.find(params[:id])
    @post414.destroy

    respond_to do |format|
      format.html { redirect_to(post414s_url) }
      format.xml  { head :ok }
    end
  end
end
