class Post176sController < ApplicationController
  # GET /post176s
  # GET /post176s.xml
  def index
    @post176s = Post176.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post176s }
    end
  end

  # GET /post176s/1
  # GET /post176s/1.xml
  def show
    @post176 = Post176.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post176 }
    end
  end

  # GET /post176s/new
  # GET /post176s/new.xml
  def new
    @post176 = Post176.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post176 }
    end
  end

  # GET /post176s/1/edit
  def edit
    @post176 = Post176.find(params[:id])
  end

  # POST /post176s
  # POST /post176s.xml
  def create
    @post176 = Post176.new(params[:post176])

    respond_to do |format|
      if @post176.save
        format.html { redirect_to(@post176, :notice => 'Post176 was successfully created.') }
        format.xml  { render :xml => @post176, :status => :created, :location => @post176 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post176.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post176s/1
  # PUT /post176s/1.xml
  def update
    @post176 = Post176.find(params[:id])

    respond_to do |format|
      if @post176.update_attributes(params[:post176])
        format.html { redirect_to(@post176, :notice => 'Post176 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post176.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post176s/1
  # DELETE /post176s/1.xml
  def destroy
    @post176 = Post176.find(params[:id])
    @post176.destroy

    respond_to do |format|
      format.html { redirect_to(post176s_url) }
      format.xml  { head :ok }
    end
  end
end
