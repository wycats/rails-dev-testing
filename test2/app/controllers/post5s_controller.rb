class Post5sController < ApplicationController
  # GET /post5s
  # GET /post5s.xml
  def index
    @post5s = Post5.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post5s }
    end
  end

  # GET /post5s/1
  # GET /post5s/1.xml
  def show
    @post5 = Post5.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post5 }
    end
  end

  # GET /post5s/new
  # GET /post5s/new.xml
  def new
    @post5 = Post5.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post5 }
    end
  end

  # GET /post5s/1/edit
  def edit
    @post5 = Post5.find(params[:id])
  end

  # POST /post5s
  # POST /post5s.xml
  def create
    @post5 = Post5.new(params[:post5])

    respond_to do |format|
      if @post5.save
        format.html { redirect_to(@post5, :notice => 'Post5 was successfully created.') }
        format.xml  { render :xml => @post5, :status => :created, :location => @post5 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post5.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post5s/1
  # PUT /post5s/1.xml
  def update
    @post5 = Post5.find(params[:id])

    respond_to do |format|
      if @post5.update_attributes(params[:post5])
        format.html { redirect_to(@post5, :notice => 'Post5 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post5.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post5s/1
  # DELETE /post5s/1.xml
  def destroy
    @post5 = Post5.find(params[:id])
    @post5.destroy

    respond_to do |format|
      format.html { redirect_to(post5s_url) }
      format.xml  { head :ok }
    end
  end
end
