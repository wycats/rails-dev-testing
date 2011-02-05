class Post197sController < ApplicationController
  # GET /post197s
  # GET /post197s.xml
  def index
    @post197s = Post197.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post197s }
    end
  end

  # GET /post197s/1
  # GET /post197s/1.xml
  def show
    @post197 = Post197.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post197 }
    end
  end

  # GET /post197s/new
  # GET /post197s/new.xml
  def new
    @post197 = Post197.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post197 }
    end
  end

  # GET /post197s/1/edit
  def edit
    @post197 = Post197.find(params[:id])
  end

  # POST /post197s
  # POST /post197s.xml
  def create
    @post197 = Post197.new(params[:post197])

    respond_to do |format|
      if @post197.save
        format.html { redirect_to(@post197, :notice => 'Post197 was successfully created.') }
        format.xml  { render :xml => @post197, :status => :created, :location => @post197 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post197.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post197s/1
  # PUT /post197s/1.xml
  def update
    @post197 = Post197.find(params[:id])

    respond_to do |format|
      if @post197.update_attributes(params[:post197])
        format.html { redirect_to(@post197, :notice => 'Post197 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post197.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post197s/1
  # DELETE /post197s/1.xml
  def destroy
    @post197 = Post197.find(params[:id])
    @post197.destroy

    respond_to do |format|
      format.html { redirect_to(post197s_url) }
      format.xml  { head :ok }
    end
  end
end
