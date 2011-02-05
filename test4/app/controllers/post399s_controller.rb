class Post399sController < ApplicationController
  # GET /post399s
  # GET /post399s.xml
  def index
    @post399s = Post399.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post399s }
    end
  end

  # GET /post399s/1
  # GET /post399s/1.xml
  def show
    @post399 = Post399.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post399 }
    end
  end

  # GET /post399s/new
  # GET /post399s/new.xml
  def new
    @post399 = Post399.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post399 }
    end
  end

  # GET /post399s/1/edit
  def edit
    @post399 = Post399.find(params[:id])
  end

  # POST /post399s
  # POST /post399s.xml
  def create
    @post399 = Post399.new(params[:post399])

    respond_to do |format|
      if @post399.save
        format.html { redirect_to(@post399, :notice => 'Post399 was successfully created.') }
        format.xml  { render :xml => @post399, :status => :created, :location => @post399 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post399.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post399s/1
  # PUT /post399s/1.xml
  def update
    @post399 = Post399.find(params[:id])

    respond_to do |format|
      if @post399.update_attributes(params[:post399])
        format.html { redirect_to(@post399, :notice => 'Post399 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post399.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post399s/1
  # DELETE /post399s/1.xml
  def destroy
    @post399 = Post399.find(params[:id])
    @post399.destroy

    respond_to do |format|
      format.html { redirect_to(post399s_url) }
      format.xml  { head :ok }
    end
  end
end
