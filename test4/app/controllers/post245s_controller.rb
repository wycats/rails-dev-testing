class Post245sController < ApplicationController
  # GET /post245s
  # GET /post245s.xml
  def index
    @post245s = Post245.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post245s }
    end
  end

  # GET /post245s/1
  # GET /post245s/1.xml
  def show
    @post245 = Post245.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post245 }
    end
  end

  # GET /post245s/new
  # GET /post245s/new.xml
  def new
    @post245 = Post245.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post245 }
    end
  end

  # GET /post245s/1/edit
  def edit
    @post245 = Post245.find(params[:id])
  end

  # POST /post245s
  # POST /post245s.xml
  def create
    @post245 = Post245.new(params[:post245])

    respond_to do |format|
      if @post245.save
        format.html { redirect_to(@post245, :notice => 'Post245 was successfully created.') }
        format.xml  { render :xml => @post245, :status => :created, :location => @post245 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post245.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post245s/1
  # PUT /post245s/1.xml
  def update
    @post245 = Post245.find(params[:id])

    respond_to do |format|
      if @post245.update_attributes(params[:post245])
        format.html { redirect_to(@post245, :notice => 'Post245 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post245.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post245s/1
  # DELETE /post245s/1.xml
  def destroy
    @post245 = Post245.find(params[:id])
    @post245.destroy

    respond_to do |format|
      format.html { redirect_to(post245s_url) }
      format.xml  { head :ok }
    end
  end
end
