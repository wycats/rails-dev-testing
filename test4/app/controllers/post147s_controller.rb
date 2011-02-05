class Post147sController < ApplicationController
  # GET /post147s
  # GET /post147s.xml
  def index
    @post147s = Post147.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post147s }
    end
  end

  # GET /post147s/1
  # GET /post147s/1.xml
  def show
    @post147 = Post147.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post147 }
    end
  end

  # GET /post147s/new
  # GET /post147s/new.xml
  def new
    @post147 = Post147.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post147 }
    end
  end

  # GET /post147s/1/edit
  def edit
    @post147 = Post147.find(params[:id])
  end

  # POST /post147s
  # POST /post147s.xml
  def create
    @post147 = Post147.new(params[:post147])

    respond_to do |format|
      if @post147.save
        format.html { redirect_to(@post147, :notice => 'Post147 was successfully created.') }
        format.xml  { render :xml => @post147, :status => :created, :location => @post147 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post147.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post147s/1
  # PUT /post147s/1.xml
  def update
    @post147 = Post147.find(params[:id])

    respond_to do |format|
      if @post147.update_attributes(params[:post147])
        format.html { redirect_to(@post147, :notice => 'Post147 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post147.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post147s/1
  # DELETE /post147s/1.xml
  def destroy
    @post147 = Post147.find(params[:id])
    @post147.destroy

    respond_to do |format|
      format.html { redirect_to(post147s_url) }
      format.xml  { head :ok }
    end
  end
end
