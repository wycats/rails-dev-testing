class Post207sController < ApplicationController
  # GET /post207s
  # GET /post207s.xml
  def index
    @post207s = Post207.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post207s }
    end
  end

  # GET /post207s/1
  # GET /post207s/1.xml
  def show
    @post207 = Post207.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post207 }
    end
  end

  # GET /post207s/new
  # GET /post207s/new.xml
  def new
    @post207 = Post207.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post207 }
    end
  end

  # GET /post207s/1/edit
  def edit
    @post207 = Post207.find(params[:id])
  end

  # POST /post207s
  # POST /post207s.xml
  def create
    @post207 = Post207.new(params[:post207])

    respond_to do |format|
      if @post207.save
        format.html { redirect_to(@post207, :notice => 'Post207 was successfully created.') }
        format.xml  { render :xml => @post207, :status => :created, :location => @post207 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post207.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post207s/1
  # PUT /post207s/1.xml
  def update
    @post207 = Post207.find(params[:id])

    respond_to do |format|
      if @post207.update_attributes(params[:post207])
        format.html { redirect_to(@post207, :notice => 'Post207 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post207.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post207s/1
  # DELETE /post207s/1.xml
  def destroy
    @post207 = Post207.find(params[:id])
    @post207.destroy

    respond_to do |format|
      format.html { redirect_to(post207s_url) }
      format.xml  { head :ok }
    end
  end
end
