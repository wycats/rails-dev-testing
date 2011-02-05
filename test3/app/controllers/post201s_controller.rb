class Post201sController < ApplicationController
  # GET /post201s
  # GET /post201s.xml
  def index
    @post201s = Post201.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post201s }
    end
  end

  # GET /post201s/1
  # GET /post201s/1.xml
  def show
    @post201 = Post201.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post201 }
    end
  end

  # GET /post201s/new
  # GET /post201s/new.xml
  def new
    @post201 = Post201.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post201 }
    end
  end

  # GET /post201s/1/edit
  def edit
    @post201 = Post201.find(params[:id])
  end

  # POST /post201s
  # POST /post201s.xml
  def create
    @post201 = Post201.new(params[:post201])

    respond_to do |format|
      if @post201.save
        format.html { redirect_to(@post201, :notice => 'Post201 was successfully created.') }
        format.xml  { render :xml => @post201, :status => :created, :location => @post201 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post201.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post201s/1
  # PUT /post201s/1.xml
  def update
    @post201 = Post201.find(params[:id])

    respond_to do |format|
      if @post201.update_attributes(params[:post201])
        format.html { redirect_to(@post201, :notice => 'Post201 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post201.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post201s/1
  # DELETE /post201s/1.xml
  def destroy
    @post201 = Post201.find(params[:id])
    @post201.destroy

    respond_to do |format|
      format.html { redirect_to(post201s_url) }
      format.xml  { head :ok }
    end
  end
end
