class Post264sController < ApplicationController
  # GET /post264s
  # GET /post264s.xml
  def index
    @post264s = Post264.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post264s }
    end
  end

  # GET /post264s/1
  # GET /post264s/1.xml
  def show
    @post264 = Post264.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post264 }
    end
  end

  # GET /post264s/new
  # GET /post264s/new.xml
  def new
    @post264 = Post264.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post264 }
    end
  end

  # GET /post264s/1/edit
  def edit
    @post264 = Post264.find(params[:id])
  end

  # POST /post264s
  # POST /post264s.xml
  def create
    @post264 = Post264.new(params[:post264])

    respond_to do |format|
      if @post264.save
        format.html { redirect_to(@post264, :notice => 'Post264 was successfully created.') }
        format.xml  { render :xml => @post264, :status => :created, :location => @post264 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post264.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post264s/1
  # PUT /post264s/1.xml
  def update
    @post264 = Post264.find(params[:id])

    respond_to do |format|
      if @post264.update_attributes(params[:post264])
        format.html { redirect_to(@post264, :notice => 'Post264 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post264.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post264s/1
  # DELETE /post264s/1.xml
  def destroy
    @post264 = Post264.find(params[:id])
    @post264.destroy

    respond_to do |format|
      format.html { redirect_to(post264s_url) }
      format.xml  { head :ok }
    end
  end
end
