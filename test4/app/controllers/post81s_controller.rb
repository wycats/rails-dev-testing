class Post81sController < ApplicationController
  # GET /post81s
  # GET /post81s.xml
  def index
    @post81s = Post81.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post81s }
    end
  end

  # GET /post81s/1
  # GET /post81s/1.xml
  def show
    @post81 = Post81.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post81 }
    end
  end

  # GET /post81s/new
  # GET /post81s/new.xml
  def new
    @post81 = Post81.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post81 }
    end
  end

  # GET /post81s/1/edit
  def edit
    @post81 = Post81.find(params[:id])
  end

  # POST /post81s
  # POST /post81s.xml
  def create
    @post81 = Post81.new(params[:post81])

    respond_to do |format|
      if @post81.save
        format.html { redirect_to(@post81, :notice => 'Post81 was successfully created.') }
        format.xml  { render :xml => @post81, :status => :created, :location => @post81 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post81.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post81s/1
  # PUT /post81s/1.xml
  def update
    @post81 = Post81.find(params[:id])

    respond_to do |format|
      if @post81.update_attributes(params[:post81])
        format.html { redirect_to(@post81, :notice => 'Post81 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post81.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post81s/1
  # DELETE /post81s/1.xml
  def destroy
    @post81 = Post81.find(params[:id])
    @post81.destroy

    respond_to do |format|
      format.html { redirect_to(post81s_url) }
      format.xml  { head :ok }
    end
  end
end
