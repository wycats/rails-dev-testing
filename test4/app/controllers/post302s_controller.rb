class Post302sController < ApplicationController
  # GET /post302s
  # GET /post302s.xml
  def index
    @post302s = Post302.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post302s }
    end
  end

  # GET /post302s/1
  # GET /post302s/1.xml
  def show
    @post302 = Post302.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post302 }
    end
  end

  # GET /post302s/new
  # GET /post302s/new.xml
  def new
    @post302 = Post302.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post302 }
    end
  end

  # GET /post302s/1/edit
  def edit
    @post302 = Post302.find(params[:id])
  end

  # POST /post302s
  # POST /post302s.xml
  def create
    @post302 = Post302.new(params[:post302])

    respond_to do |format|
      if @post302.save
        format.html { redirect_to(@post302, :notice => 'Post302 was successfully created.') }
        format.xml  { render :xml => @post302, :status => :created, :location => @post302 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post302.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post302s/1
  # PUT /post302s/1.xml
  def update
    @post302 = Post302.find(params[:id])

    respond_to do |format|
      if @post302.update_attributes(params[:post302])
        format.html { redirect_to(@post302, :notice => 'Post302 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post302.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post302s/1
  # DELETE /post302s/1.xml
  def destroy
    @post302 = Post302.find(params[:id])
    @post302.destroy

    respond_to do |format|
      format.html { redirect_to(post302s_url) }
      format.xml  { head :ok }
    end
  end
end
