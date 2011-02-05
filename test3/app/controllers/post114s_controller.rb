class Post114sController < ApplicationController
  # GET /post114s
  # GET /post114s.xml
  def index
    @post114s = Post114.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post114s }
    end
  end

  # GET /post114s/1
  # GET /post114s/1.xml
  def show
    @post114 = Post114.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post114 }
    end
  end

  # GET /post114s/new
  # GET /post114s/new.xml
  def new
    @post114 = Post114.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post114 }
    end
  end

  # GET /post114s/1/edit
  def edit
    @post114 = Post114.find(params[:id])
  end

  # POST /post114s
  # POST /post114s.xml
  def create
    @post114 = Post114.new(params[:post114])

    respond_to do |format|
      if @post114.save
        format.html { redirect_to(@post114, :notice => 'Post114 was successfully created.') }
        format.xml  { render :xml => @post114, :status => :created, :location => @post114 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post114.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post114s/1
  # PUT /post114s/1.xml
  def update
    @post114 = Post114.find(params[:id])

    respond_to do |format|
      if @post114.update_attributes(params[:post114])
        format.html { redirect_to(@post114, :notice => 'Post114 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post114.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post114s/1
  # DELETE /post114s/1.xml
  def destroy
    @post114 = Post114.find(params[:id])
    @post114.destroy

    respond_to do |format|
      format.html { redirect_to(post114s_url) }
      format.xml  { head :ok }
    end
  end
end
