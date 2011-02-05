class Post411sController < ApplicationController
  # GET /post411s
  # GET /post411s.xml
  def index
    @post411s = Post411.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post411s }
    end
  end

  # GET /post411s/1
  # GET /post411s/1.xml
  def show
    @post411 = Post411.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post411 }
    end
  end

  # GET /post411s/new
  # GET /post411s/new.xml
  def new
    @post411 = Post411.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post411 }
    end
  end

  # GET /post411s/1/edit
  def edit
    @post411 = Post411.find(params[:id])
  end

  # POST /post411s
  # POST /post411s.xml
  def create
    @post411 = Post411.new(params[:post411])

    respond_to do |format|
      if @post411.save
        format.html { redirect_to(@post411, :notice => 'Post411 was successfully created.') }
        format.xml  { render :xml => @post411, :status => :created, :location => @post411 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post411.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post411s/1
  # PUT /post411s/1.xml
  def update
    @post411 = Post411.find(params[:id])

    respond_to do |format|
      if @post411.update_attributes(params[:post411])
        format.html { redirect_to(@post411, :notice => 'Post411 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post411.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post411s/1
  # DELETE /post411s/1.xml
  def destroy
    @post411 = Post411.find(params[:id])
    @post411.destroy

    respond_to do |format|
      format.html { redirect_to(post411s_url) }
      format.xml  { head :ok }
    end
  end
end
