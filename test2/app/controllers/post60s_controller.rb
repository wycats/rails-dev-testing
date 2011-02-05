class Post60sController < ApplicationController
  # GET /post60s
  # GET /post60s.xml
  def index
    @post60s = Post60.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post60s }
    end
  end

  # GET /post60s/1
  # GET /post60s/1.xml
  def show
    @post60 = Post60.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post60 }
    end
  end

  # GET /post60s/new
  # GET /post60s/new.xml
  def new
    @post60 = Post60.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post60 }
    end
  end

  # GET /post60s/1/edit
  def edit
    @post60 = Post60.find(params[:id])
  end

  # POST /post60s
  # POST /post60s.xml
  def create
    @post60 = Post60.new(params[:post60])

    respond_to do |format|
      if @post60.save
        format.html { redirect_to(@post60, :notice => 'Post60 was successfully created.') }
        format.xml  { render :xml => @post60, :status => :created, :location => @post60 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post60.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post60s/1
  # PUT /post60s/1.xml
  def update
    @post60 = Post60.find(params[:id])

    respond_to do |format|
      if @post60.update_attributes(params[:post60])
        format.html { redirect_to(@post60, :notice => 'Post60 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post60.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post60s/1
  # DELETE /post60s/1.xml
  def destroy
    @post60 = Post60.find(params[:id])
    @post60.destroy

    respond_to do |format|
      format.html { redirect_to(post60s_url) }
      format.xml  { head :ok }
    end
  end
end
