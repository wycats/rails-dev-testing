class Post6sController < ApplicationController
  # GET /post6s
  # GET /post6s.xml
  def index
    @post6s = Post6.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post6s }
    end
  end

  # GET /post6s/1
  # GET /post6s/1.xml
  def show
    @post6 = Post6.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post6 }
    end
  end

  # GET /post6s/new
  # GET /post6s/new.xml
  def new
    @post6 = Post6.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post6 }
    end
  end

  # GET /post6s/1/edit
  def edit
    @post6 = Post6.find(params[:id])
  end

  # POST /post6s
  # POST /post6s.xml
  def create
    @post6 = Post6.new(params[:post6])

    respond_to do |format|
      if @post6.save
        format.html { redirect_to(@post6, :notice => 'Post6 was successfully created.') }
        format.xml  { render :xml => @post6, :status => :created, :location => @post6 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post6.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post6s/1
  # PUT /post6s/1.xml
  def update
    @post6 = Post6.find(params[:id])

    respond_to do |format|
      if @post6.update_attributes(params[:post6])
        format.html { redirect_to(@post6, :notice => 'Post6 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post6.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post6s/1
  # DELETE /post6s/1.xml
  def destroy
    @post6 = Post6.find(params[:id])
    @post6.destroy

    respond_to do |format|
      format.html { redirect_to(post6s_url) }
      format.xml  { head :ok }
    end
  end
end
