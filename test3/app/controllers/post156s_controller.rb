class Post156sController < ApplicationController
  # GET /post156s
  # GET /post156s.xml
  def index
    @post156s = Post156.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post156s }
    end
  end

  # GET /post156s/1
  # GET /post156s/1.xml
  def show
    @post156 = Post156.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post156 }
    end
  end

  # GET /post156s/new
  # GET /post156s/new.xml
  def new
    @post156 = Post156.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post156 }
    end
  end

  # GET /post156s/1/edit
  def edit
    @post156 = Post156.find(params[:id])
  end

  # POST /post156s
  # POST /post156s.xml
  def create
    @post156 = Post156.new(params[:post156])

    respond_to do |format|
      if @post156.save
        format.html { redirect_to(@post156, :notice => 'Post156 was successfully created.') }
        format.xml  { render :xml => @post156, :status => :created, :location => @post156 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post156.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post156s/1
  # PUT /post156s/1.xml
  def update
    @post156 = Post156.find(params[:id])

    respond_to do |format|
      if @post156.update_attributes(params[:post156])
        format.html { redirect_to(@post156, :notice => 'Post156 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post156.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post156s/1
  # DELETE /post156s/1.xml
  def destroy
    @post156 = Post156.find(params[:id])
    @post156.destroy

    respond_to do |format|
      format.html { redirect_to(post156s_url) }
      format.xml  { head :ok }
    end
  end
end
