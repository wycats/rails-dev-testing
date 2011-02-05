class Post255sController < ApplicationController
  # GET /post255s
  # GET /post255s.xml
  def index
    @post255s = Post255.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post255s }
    end
  end

  # GET /post255s/1
  # GET /post255s/1.xml
  def show
    @post255 = Post255.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post255 }
    end
  end

  # GET /post255s/new
  # GET /post255s/new.xml
  def new
    @post255 = Post255.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post255 }
    end
  end

  # GET /post255s/1/edit
  def edit
    @post255 = Post255.find(params[:id])
  end

  # POST /post255s
  # POST /post255s.xml
  def create
    @post255 = Post255.new(params[:post255])

    respond_to do |format|
      if @post255.save
        format.html { redirect_to(@post255, :notice => 'Post255 was successfully created.') }
        format.xml  { render :xml => @post255, :status => :created, :location => @post255 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post255.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post255s/1
  # PUT /post255s/1.xml
  def update
    @post255 = Post255.find(params[:id])

    respond_to do |format|
      if @post255.update_attributes(params[:post255])
        format.html { redirect_to(@post255, :notice => 'Post255 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post255.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post255s/1
  # DELETE /post255s/1.xml
  def destroy
    @post255 = Post255.find(params[:id])
    @post255.destroy

    respond_to do |format|
      format.html { redirect_to(post255s_url) }
      format.xml  { head :ok }
    end
  end
end
