class Post267sController < ApplicationController
  # GET /post267s
  # GET /post267s.xml
  def index
    @post267s = Post267.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post267s }
    end
  end

  # GET /post267s/1
  # GET /post267s/1.xml
  def show
    @post267 = Post267.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post267 }
    end
  end

  # GET /post267s/new
  # GET /post267s/new.xml
  def new
    @post267 = Post267.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post267 }
    end
  end

  # GET /post267s/1/edit
  def edit
    @post267 = Post267.find(params[:id])
  end

  # POST /post267s
  # POST /post267s.xml
  def create
    @post267 = Post267.new(params[:post267])

    respond_to do |format|
      if @post267.save
        format.html { redirect_to(@post267, :notice => 'Post267 was successfully created.') }
        format.xml  { render :xml => @post267, :status => :created, :location => @post267 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post267.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post267s/1
  # PUT /post267s/1.xml
  def update
    @post267 = Post267.find(params[:id])

    respond_to do |format|
      if @post267.update_attributes(params[:post267])
        format.html { redirect_to(@post267, :notice => 'Post267 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post267.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post267s/1
  # DELETE /post267s/1.xml
  def destroy
    @post267 = Post267.find(params[:id])
    @post267.destroy

    respond_to do |format|
      format.html { redirect_to(post267s_url) }
      format.xml  { head :ok }
    end
  end
end
