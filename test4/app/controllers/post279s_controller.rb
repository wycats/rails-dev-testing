class Post279sController < ApplicationController
  # GET /post279s
  # GET /post279s.xml
  def index
    @post279s = Post279.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post279s }
    end
  end

  # GET /post279s/1
  # GET /post279s/1.xml
  def show
    @post279 = Post279.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post279 }
    end
  end

  # GET /post279s/new
  # GET /post279s/new.xml
  def new
    @post279 = Post279.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post279 }
    end
  end

  # GET /post279s/1/edit
  def edit
    @post279 = Post279.find(params[:id])
  end

  # POST /post279s
  # POST /post279s.xml
  def create
    @post279 = Post279.new(params[:post279])

    respond_to do |format|
      if @post279.save
        format.html { redirect_to(@post279, :notice => 'Post279 was successfully created.') }
        format.xml  { render :xml => @post279, :status => :created, :location => @post279 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post279.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post279s/1
  # PUT /post279s/1.xml
  def update
    @post279 = Post279.find(params[:id])

    respond_to do |format|
      if @post279.update_attributes(params[:post279])
        format.html { redirect_to(@post279, :notice => 'Post279 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post279.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post279s/1
  # DELETE /post279s/1.xml
  def destroy
    @post279 = Post279.find(params[:id])
    @post279.destroy

    respond_to do |format|
      format.html { redirect_to(post279s_url) }
      format.xml  { head :ok }
    end
  end
end
