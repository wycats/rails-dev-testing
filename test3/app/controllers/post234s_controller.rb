class Post234sController < ApplicationController
  # GET /post234s
  # GET /post234s.xml
  def index
    @post234s = Post234.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post234s }
    end
  end

  # GET /post234s/1
  # GET /post234s/1.xml
  def show
    @post234 = Post234.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post234 }
    end
  end

  # GET /post234s/new
  # GET /post234s/new.xml
  def new
    @post234 = Post234.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post234 }
    end
  end

  # GET /post234s/1/edit
  def edit
    @post234 = Post234.find(params[:id])
  end

  # POST /post234s
  # POST /post234s.xml
  def create
    @post234 = Post234.new(params[:post234])

    respond_to do |format|
      if @post234.save
        format.html { redirect_to(@post234, :notice => 'Post234 was successfully created.') }
        format.xml  { render :xml => @post234, :status => :created, :location => @post234 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post234.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post234s/1
  # PUT /post234s/1.xml
  def update
    @post234 = Post234.find(params[:id])

    respond_to do |format|
      if @post234.update_attributes(params[:post234])
        format.html { redirect_to(@post234, :notice => 'Post234 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post234.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post234s/1
  # DELETE /post234s/1.xml
  def destroy
    @post234 = Post234.find(params[:id])
    @post234.destroy

    respond_to do |format|
      format.html { redirect_to(post234s_url) }
      format.xml  { head :ok }
    end
  end
end
