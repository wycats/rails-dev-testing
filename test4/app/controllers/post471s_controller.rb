class Post471sController < ApplicationController
  # GET /post471s
  # GET /post471s.xml
  def index
    @post471s = Post471.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post471s }
    end
  end

  # GET /post471s/1
  # GET /post471s/1.xml
  def show
    @post471 = Post471.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post471 }
    end
  end

  # GET /post471s/new
  # GET /post471s/new.xml
  def new
    @post471 = Post471.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post471 }
    end
  end

  # GET /post471s/1/edit
  def edit
    @post471 = Post471.find(params[:id])
  end

  # POST /post471s
  # POST /post471s.xml
  def create
    @post471 = Post471.new(params[:post471])

    respond_to do |format|
      if @post471.save
        format.html { redirect_to(@post471, :notice => 'Post471 was successfully created.') }
        format.xml  { render :xml => @post471, :status => :created, :location => @post471 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post471.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post471s/1
  # PUT /post471s/1.xml
  def update
    @post471 = Post471.find(params[:id])

    respond_to do |format|
      if @post471.update_attributes(params[:post471])
        format.html { redirect_to(@post471, :notice => 'Post471 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post471.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post471s/1
  # DELETE /post471s/1.xml
  def destroy
    @post471 = Post471.find(params[:id])
    @post471.destroy

    respond_to do |format|
      format.html { redirect_to(post471s_url) }
      format.xml  { head :ok }
    end
  end
end
