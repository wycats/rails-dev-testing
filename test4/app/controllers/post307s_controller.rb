class Post307sController < ApplicationController
  # GET /post307s
  # GET /post307s.xml
  def index
    @post307s = Post307.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post307s }
    end
  end

  # GET /post307s/1
  # GET /post307s/1.xml
  def show
    @post307 = Post307.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post307 }
    end
  end

  # GET /post307s/new
  # GET /post307s/new.xml
  def new
    @post307 = Post307.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post307 }
    end
  end

  # GET /post307s/1/edit
  def edit
    @post307 = Post307.find(params[:id])
  end

  # POST /post307s
  # POST /post307s.xml
  def create
    @post307 = Post307.new(params[:post307])

    respond_to do |format|
      if @post307.save
        format.html { redirect_to(@post307, :notice => 'Post307 was successfully created.') }
        format.xml  { render :xml => @post307, :status => :created, :location => @post307 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post307.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post307s/1
  # PUT /post307s/1.xml
  def update
    @post307 = Post307.find(params[:id])

    respond_to do |format|
      if @post307.update_attributes(params[:post307])
        format.html { redirect_to(@post307, :notice => 'Post307 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post307.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post307s/1
  # DELETE /post307s/1.xml
  def destroy
    @post307 = Post307.find(params[:id])
    @post307.destroy

    respond_to do |format|
      format.html { redirect_to(post307s_url) }
      format.xml  { head :ok }
    end
  end
end
