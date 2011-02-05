class Post416sController < ApplicationController
  # GET /post416s
  # GET /post416s.xml
  def index
    @post416s = Post416.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post416s }
    end
  end

  # GET /post416s/1
  # GET /post416s/1.xml
  def show
    @post416 = Post416.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post416 }
    end
  end

  # GET /post416s/new
  # GET /post416s/new.xml
  def new
    @post416 = Post416.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post416 }
    end
  end

  # GET /post416s/1/edit
  def edit
    @post416 = Post416.find(params[:id])
  end

  # POST /post416s
  # POST /post416s.xml
  def create
    @post416 = Post416.new(params[:post416])

    respond_to do |format|
      if @post416.save
        format.html { redirect_to(@post416, :notice => 'Post416 was successfully created.') }
        format.xml  { render :xml => @post416, :status => :created, :location => @post416 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post416.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post416s/1
  # PUT /post416s/1.xml
  def update
    @post416 = Post416.find(params[:id])

    respond_to do |format|
      if @post416.update_attributes(params[:post416])
        format.html { redirect_to(@post416, :notice => 'Post416 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post416.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post416s/1
  # DELETE /post416s/1.xml
  def destroy
    @post416 = Post416.find(params[:id])
    @post416.destroy

    respond_to do |format|
      format.html { redirect_to(post416s_url) }
      format.xml  { head :ok }
    end
  end
end
