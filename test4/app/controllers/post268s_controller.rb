class Post268sController < ApplicationController
  # GET /post268s
  # GET /post268s.xml
  def index
    @post268s = Post268.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post268s }
    end
  end

  # GET /post268s/1
  # GET /post268s/1.xml
  def show
    @post268 = Post268.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post268 }
    end
  end

  # GET /post268s/new
  # GET /post268s/new.xml
  def new
    @post268 = Post268.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post268 }
    end
  end

  # GET /post268s/1/edit
  def edit
    @post268 = Post268.find(params[:id])
  end

  # POST /post268s
  # POST /post268s.xml
  def create
    @post268 = Post268.new(params[:post268])

    respond_to do |format|
      if @post268.save
        format.html { redirect_to(@post268, :notice => 'Post268 was successfully created.') }
        format.xml  { render :xml => @post268, :status => :created, :location => @post268 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post268.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post268s/1
  # PUT /post268s/1.xml
  def update
    @post268 = Post268.find(params[:id])

    respond_to do |format|
      if @post268.update_attributes(params[:post268])
        format.html { redirect_to(@post268, :notice => 'Post268 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post268.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post268s/1
  # DELETE /post268s/1.xml
  def destroy
    @post268 = Post268.find(params[:id])
    @post268.destroy

    respond_to do |format|
      format.html { redirect_to(post268s_url) }
      format.xml  { head :ok }
    end
  end
end
