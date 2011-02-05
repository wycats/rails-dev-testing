class Post115sController < ApplicationController
  # GET /post115s
  # GET /post115s.xml
  def index
    @post115s = Post115.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post115s }
    end
  end

  # GET /post115s/1
  # GET /post115s/1.xml
  def show
    @post115 = Post115.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post115 }
    end
  end

  # GET /post115s/new
  # GET /post115s/new.xml
  def new
    @post115 = Post115.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post115 }
    end
  end

  # GET /post115s/1/edit
  def edit
    @post115 = Post115.find(params[:id])
  end

  # POST /post115s
  # POST /post115s.xml
  def create
    @post115 = Post115.new(params[:post115])

    respond_to do |format|
      if @post115.save
        format.html { redirect_to(@post115, :notice => 'Post115 was successfully created.') }
        format.xml  { render :xml => @post115, :status => :created, :location => @post115 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post115.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post115s/1
  # PUT /post115s/1.xml
  def update
    @post115 = Post115.find(params[:id])

    respond_to do |format|
      if @post115.update_attributes(params[:post115])
        format.html { redirect_to(@post115, :notice => 'Post115 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post115.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post115s/1
  # DELETE /post115s/1.xml
  def destroy
    @post115 = Post115.find(params[:id])
    @post115.destroy

    respond_to do |format|
      format.html { redirect_to(post115s_url) }
      format.xml  { head :ok }
    end
  end
end
