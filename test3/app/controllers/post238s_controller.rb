class Post238sController < ApplicationController
  # GET /post238s
  # GET /post238s.xml
  def index
    @post238s = Post238.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post238s }
    end
  end

  # GET /post238s/1
  # GET /post238s/1.xml
  def show
    @post238 = Post238.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post238 }
    end
  end

  # GET /post238s/new
  # GET /post238s/new.xml
  def new
    @post238 = Post238.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post238 }
    end
  end

  # GET /post238s/1/edit
  def edit
    @post238 = Post238.find(params[:id])
  end

  # POST /post238s
  # POST /post238s.xml
  def create
    @post238 = Post238.new(params[:post238])

    respond_to do |format|
      if @post238.save
        format.html { redirect_to(@post238, :notice => 'Post238 was successfully created.') }
        format.xml  { render :xml => @post238, :status => :created, :location => @post238 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post238.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post238s/1
  # PUT /post238s/1.xml
  def update
    @post238 = Post238.find(params[:id])

    respond_to do |format|
      if @post238.update_attributes(params[:post238])
        format.html { redirect_to(@post238, :notice => 'Post238 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post238.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post238s/1
  # DELETE /post238s/1.xml
  def destroy
    @post238 = Post238.find(params[:id])
    @post238.destroy

    respond_to do |format|
      format.html { redirect_to(post238s_url) }
      format.xml  { head :ok }
    end
  end
end
