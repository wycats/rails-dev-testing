class Post187sController < ApplicationController
  # GET /post187s
  # GET /post187s.xml
  def index
    @post187s = Post187.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post187s }
    end
  end

  # GET /post187s/1
  # GET /post187s/1.xml
  def show
    @post187 = Post187.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post187 }
    end
  end

  # GET /post187s/new
  # GET /post187s/new.xml
  def new
    @post187 = Post187.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post187 }
    end
  end

  # GET /post187s/1/edit
  def edit
    @post187 = Post187.find(params[:id])
  end

  # POST /post187s
  # POST /post187s.xml
  def create
    @post187 = Post187.new(params[:post187])

    respond_to do |format|
      if @post187.save
        format.html { redirect_to(@post187, :notice => 'Post187 was successfully created.') }
        format.xml  { render :xml => @post187, :status => :created, :location => @post187 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post187.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post187s/1
  # PUT /post187s/1.xml
  def update
    @post187 = Post187.find(params[:id])

    respond_to do |format|
      if @post187.update_attributes(params[:post187])
        format.html { redirect_to(@post187, :notice => 'Post187 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post187.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post187s/1
  # DELETE /post187s/1.xml
  def destroy
    @post187 = Post187.find(params[:id])
    @post187.destroy

    respond_to do |format|
      format.html { redirect_to(post187s_url) }
      format.xml  { head :ok }
    end
  end
end
