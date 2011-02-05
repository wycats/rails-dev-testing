class Post185sController < ApplicationController
  # GET /post185s
  # GET /post185s.xml
  def index
    @post185s = Post185.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post185s }
    end
  end

  # GET /post185s/1
  # GET /post185s/1.xml
  def show
    @post185 = Post185.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post185 }
    end
  end

  # GET /post185s/new
  # GET /post185s/new.xml
  def new
    @post185 = Post185.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post185 }
    end
  end

  # GET /post185s/1/edit
  def edit
    @post185 = Post185.find(params[:id])
  end

  # POST /post185s
  # POST /post185s.xml
  def create
    @post185 = Post185.new(params[:post185])

    respond_to do |format|
      if @post185.save
        format.html { redirect_to(@post185, :notice => 'Post185 was successfully created.') }
        format.xml  { render :xml => @post185, :status => :created, :location => @post185 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post185.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post185s/1
  # PUT /post185s/1.xml
  def update
    @post185 = Post185.find(params[:id])

    respond_to do |format|
      if @post185.update_attributes(params[:post185])
        format.html { redirect_to(@post185, :notice => 'Post185 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post185.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post185s/1
  # DELETE /post185s/1.xml
  def destroy
    @post185 = Post185.find(params[:id])
    @post185.destroy

    respond_to do |format|
      format.html { redirect_to(post185s_url) }
      format.xml  { head :ok }
    end
  end
end
