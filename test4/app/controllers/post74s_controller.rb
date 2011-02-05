class Post74sController < ApplicationController
  # GET /post74s
  # GET /post74s.xml
  def index
    @post74s = Post74.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post74s }
    end
  end

  # GET /post74s/1
  # GET /post74s/1.xml
  def show
    @post74 = Post74.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post74 }
    end
  end

  # GET /post74s/new
  # GET /post74s/new.xml
  def new
    @post74 = Post74.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post74 }
    end
  end

  # GET /post74s/1/edit
  def edit
    @post74 = Post74.find(params[:id])
  end

  # POST /post74s
  # POST /post74s.xml
  def create
    @post74 = Post74.new(params[:post74])

    respond_to do |format|
      if @post74.save
        format.html { redirect_to(@post74, :notice => 'Post74 was successfully created.') }
        format.xml  { render :xml => @post74, :status => :created, :location => @post74 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post74.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post74s/1
  # PUT /post74s/1.xml
  def update
    @post74 = Post74.find(params[:id])

    respond_to do |format|
      if @post74.update_attributes(params[:post74])
        format.html { redirect_to(@post74, :notice => 'Post74 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post74.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post74s/1
  # DELETE /post74s/1.xml
  def destroy
    @post74 = Post74.find(params[:id])
    @post74.destroy

    respond_to do |format|
      format.html { redirect_to(post74s_url) }
      format.xml  { head :ok }
    end
  end
end
