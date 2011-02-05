class Post373sController < ApplicationController
  # GET /post373s
  # GET /post373s.xml
  def index
    @post373s = Post373.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post373s }
    end
  end

  # GET /post373s/1
  # GET /post373s/1.xml
  def show
    @post373 = Post373.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post373 }
    end
  end

  # GET /post373s/new
  # GET /post373s/new.xml
  def new
    @post373 = Post373.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post373 }
    end
  end

  # GET /post373s/1/edit
  def edit
    @post373 = Post373.find(params[:id])
  end

  # POST /post373s
  # POST /post373s.xml
  def create
    @post373 = Post373.new(params[:post373])

    respond_to do |format|
      if @post373.save
        format.html { redirect_to(@post373, :notice => 'Post373 was successfully created.') }
        format.xml  { render :xml => @post373, :status => :created, :location => @post373 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post373.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post373s/1
  # PUT /post373s/1.xml
  def update
    @post373 = Post373.find(params[:id])

    respond_to do |format|
      if @post373.update_attributes(params[:post373])
        format.html { redirect_to(@post373, :notice => 'Post373 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post373.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post373s/1
  # DELETE /post373s/1.xml
  def destroy
    @post373 = Post373.find(params[:id])
    @post373.destroy

    respond_to do |format|
      format.html { redirect_to(post373s_url) }
      format.xml  { head :ok }
    end
  end
end
