class Post136sController < ApplicationController
  # GET /post136s
  # GET /post136s.xml
  def index
    @post136s = Post136.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post136s }
    end
  end

  # GET /post136s/1
  # GET /post136s/1.xml
  def show
    @post136 = Post136.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post136 }
    end
  end

  # GET /post136s/new
  # GET /post136s/new.xml
  def new
    @post136 = Post136.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post136 }
    end
  end

  # GET /post136s/1/edit
  def edit
    @post136 = Post136.find(params[:id])
  end

  # POST /post136s
  # POST /post136s.xml
  def create
    @post136 = Post136.new(params[:post136])

    respond_to do |format|
      if @post136.save
        format.html { redirect_to(@post136, :notice => 'Post136 was successfully created.') }
        format.xml  { render :xml => @post136, :status => :created, :location => @post136 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post136.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post136s/1
  # PUT /post136s/1.xml
  def update
    @post136 = Post136.find(params[:id])

    respond_to do |format|
      if @post136.update_attributes(params[:post136])
        format.html { redirect_to(@post136, :notice => 'Post136 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post136.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post136s/1
  # DELETE /post136s/1.xml
  def destroy
    @post136 = Post136.find(params[:id])
    @post136.destroy

    respond_to do |format|
      format.html { redirect_to(post136s_url) }
      format.xml  { head :ok }
    end
  end
end
