class Post20sController < ApplicationController
  # GET /post20s
  # GET /post20s.xml
  def index
    @post20s = Post20.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post20s }
    end
  end

  # GET /post20s/1
  # GET /post20s/1.xml
  def show
    @post20 = Post20.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post20 }
    end
  end

  # GET /post20s/new
  # GET /post20s/new.xml
  def new
    @post20 = Post20.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post20 }
    end
  end

  # GET /post20s/1/edit
  def edit
    @post20 = Post20.find(params[:id])
  end

  # POST /post20s
  # POST /post20s.xml
  def create
    @post20 = Post20.new(params[:post20])

    respond_to do |format|
      if @post20.save
        format.html { redirect_to(@post20, :notice => 'Post20 was successfully created.') }
        format.xml  { render :xml => @post20, :status => :created, :location => @post20 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post20.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post20s/1
  # PUT /post20s/1.xml
  def update
    @post20 = Post20.find(params[:id])

    respond_to do |format|
      if @post20.update_attributes(params[:post20])
        format.html { redirect_to(@post20, :notice => 'Post20 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post20.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post20s/1
  # DELETE /post20s/1.xml
  def destroy
    @post20 = Post20.find(params[:id])
    @post20.destroy

    respond_to do |format|
      format.html { redirect_to(post20s_url) }
      format.xml  { head :ok }
    end
  end
end
