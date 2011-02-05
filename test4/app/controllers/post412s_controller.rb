class Post412sController < ApplicationController
  # GET /post412s
  # GET /post412s.xml
  def index
    @post412s = Post412.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post412s }
    end
  end

  # GET /post412s/1
  # GET /post412s/1.xml
  def show
    @post412 = Post412.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post412 }
    end
  end

  # GET /post412s/new
  # GET /post412s/new.xml
  def new
    @post412 = Post412.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post412 }
    end
  end

  # GET /post412s/1/edit
  def edit
    @post412 = Post412.find(params[:id])
  end

  # POST /post412s
  # POST /post412s.xml
  def create
    @post412 = Post412.new(params[:post412])

    respond_to do |format|
      if @post412.save
        format.html { redirect_to(@post412, :notice => 'Post412 was successfully created.') }
        format.xml  { render :xml => @post412, :status => :created, :location => @post412 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post412.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post412s/1
  # PUT /post412s/1.xml
  def update
    @post412 = Post412.find(params[:id])

    respond_to do |format|
      if @post412.update_attributes(params[:post412])
        format.html { redirect_to(@post412, :notice => 'Post412 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post412.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post412s/1
  # DELETE /post412s/1.xml
  def destroy
    @post412 = Post412.find(params[:id])
    @post412.destroy

    respond_to do |format|
      format.html { redirect_to(post412s_url) }
      format.xml  { head :ok }
    end
  end
end
