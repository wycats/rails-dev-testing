class Post103sController < ApplicationController
  # GET /post103s
  # GET /post103s.xml
  def index
    @post103s = Post103.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post103s }
    end
  end

  # GET /post103s/1
  # GET /post103s/1.xml
  def show
    @post103 = Post103.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post103 }
    end
  end

  # GET /post103s/new
  # GET /post103s/new.xml
  def new
    @post103 = Post103.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post103 }
    end
  end

  # GET /post103s/1/edit
  def edit
    @post103 = Post103.find(params[:id])
  end

  # POST /post103s
  # POST /post103s.xml
  def create
    @post103 = Post103.new(params[:post103])

    respond_to do |format|
      if @post103.save
        format.html { redirect_to(@post103, :notice => 'Post103 was successfully created.') }
        format.xml  { render :xml => @post103, :status => :created, :location => @post103 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post103.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post103s/1
  # PUT /post103s/1.xml
  def update
    @post103 = Post103.find(params[:id])

    respond_to do |format|
      if @post103.update_attributes(params[:post103])
        format.html { redirect_to(@post103, :notice => 'Post103 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post103.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post103s/1
  # DELETE /post103s/1.xml
  def destroy
    @post103 = Post103.find(params[:id])
    @post103.destroy

    respond_to do |format|
      format.html { redirect_to(post103s_url) }
      format.xml  { head :ok }
    end
  end
end
