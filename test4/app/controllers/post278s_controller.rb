class Post278sController < ApplicationController
  # GET /post278s
  # GET /post278s.xml
  def index
    @post278s = Post278.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post278s }
    end
  end

  # GET /post278s/1
  # GET /post278s/1.xml
  def show
    @post278 = Post278.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post278 }
    end
  end

  # GET /post278s/new
  # GET /post278s/new.xml
  def new
    @post278 = Post278.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post278 }
    end
  end

  # GET /post278s/1/edit
  def edit
    @post278 = Post278.find(params[:id])
  end

  # POST /post278s
  # POST /post278s.xml
  def create
    @post278 = Post278.new(params[:post278])

    respond_to do |format|
      if @post278.save
        format.html { redirect_to(@post278, :notice => 'Post278 was successfully created.') }
        format.xml  { render :xml => @post278, :status => :created, :location => @post278 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post278.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post278s/1
  # PUT /post278s/1.xml
  def update
    @post278 = Post278.find(params[:id])

    respond_to do |format|
      if @post278.update_attributes(params[:post278])
        format.html { redirect_to(@post278, :notice => 'Post278 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post278.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post278s/1
  # DELETE /post278s/1.xml
  def destroy
    @post278 = Post278.find(params[:id])
    @post278.destroy

    respond_to do |format|
      format.html { redirect_to(post278s_url) }
      format.xml  { head :ok }
    end
  end
end
