class Post148sController < ApplicationController
  # GET /post148s
  # GET /post148s.xml
  def index
    @post148s = Post148.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post148s }
    end
  end

  # GET /post148s/1
  # GET /post148s/1.xml
  def show
    @post148 = Post148.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post148 }
    end
  end

  # GET /post148s/new
  # GET /post148s/new.xml
  def new
    @post148 = Post148.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post148 }
    end
  end

  # GET /post148s/1/edit
  def edit
    @post148 = Post148.find(params[:id])
  end

  # POST /post148s
  # POST /post148s.xml
  def create
    @post148 = Post148.new(params[:post148])

    respond_to do |format|
      if @post148.save
        format.html { redirect_to(@post148, :notice => 'Post148 was successfully created.') }
        format.xml  { render :xml => @post148, :status => :created, :location => @post148 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post148.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post148s/1
  # PUT /post148s/1.xml
  def update
    @post148 = Post148.find(params[:id])

    respond_to do |format|
      if @post148.update_attributes(params[:post148])
        format.html { redirect_to(@post148, :notice => 'Post148 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post148.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post148s/1
  # DELETE /post148s/1.xml
  def destroy
    @post148 = Post148.find(params[:id])
    @post148.destroy

    respond_to do |format|
      format.html { redirect_to(post148s_url) }
      format.xml  { head :ok }
    end
  end
end
