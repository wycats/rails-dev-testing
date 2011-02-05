class Post208sController < ApplicationController
  # GET /post208s
  # GET /post208s.xml
  def index
    @post208s = Post208.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post208s }
    end
  end

  # GET /post208s/1
  # GET /post208s/1.xml
  def show
    @post208 = Post208.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post208 }
    end
  end

  # GET /post208s/new
  # GET /post208s/new.xml
  def new
    @post208 = Post208.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post208 }
    end
  end

  # GET /post208s/1/edit
  def edit
    @post208 = Post208.find(params[:id])
  end

  # POST /post208s
  # POST /post208s.xml
  def create
    @post208 = Post208.new(params[:post208])

    respond_to do |format|
      if @post208.save
        format.html { redirect_to(@post208, :notice => 'Post208 was successfully created.') }
        format.xml  { render :xml => @post208, :status => :created, :location => @post208 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post208.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post208s/1
  # PUT /post208s/1.xml
  def update
    @post208 = Post208.find(params[:id])

    respond_to do |format|
      if @post208.update_attributes(params[:post208])
        format.html { redirect_to(@post208, :notice => 'Post208 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post208.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post208s/1
  # DELETE /post208s/1.xml
  def destroy
    @post208 = Post208.find(params[:id])
    @post208.destroy

    respond_to do |format|
      format.html { redirect_to(post208s_url) }
      format.xml  { head :ok }
    end
  end
end
