class Post158sController < ApplicationController
  # GET /post158s
  # GET /post158s.xml
  def index
    @post158s = Post158.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post158s }
    end
  end

  # GET /post158s/1
  # GET /post158s/1.xml
  def show
    @post158 = Post158.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post158 }
    end
  end

  # GET /post158s/new
  # GET /post158s/new.xml
  def new
    @post158 = Post158.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post158 }
    end
  end

  # GET /post158s/1/edit
  def edit
    @post158 = Post158.find(params[:id])
  end

  # POST /post158s
  # POST /post158s.xml
  def create
    @post158 = Post158.new(params[:post158])

    respond_to do |format|
      if @post158.save
        format.html { redirect_to(@post158, :notice => 'Post158 was successfully created.') }
        format.xml  { render :xml => @post158, :status => :created, :location => @post158 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post158.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post158s/1
  # PUT /post158s/1.xml
  def update
    @post158 = Post158.find(params[:id])

    respond_to do |format|
      if @post158.update_attributes(params[:post158])
        format.html { redirect_to(@post158, :notice => 'Post158 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post158.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post158s/1
  # DELETE /post158s/1.xml
  def destroy
    @post158 = Post158.find(params[:id])
    @post158.destroy

    respond_to do |format|
      format.html { redirect_to(post158s_url) }
      format.xml  { head :ok }
    end
  end
end
