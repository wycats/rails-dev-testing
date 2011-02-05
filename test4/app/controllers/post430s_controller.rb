class Post430sController < ApplicationController
  # GET /post430s
  # GET /post430s.xml
  def index
    @post430s = Post430.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post430s }
    end
  end

  # GET /post430s/1
  # GET /post430s/1.xml
  def show
    @post430 = Post430.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post430 }
    end
  end

  # GET /post430s/new
  # GET /post430s/new.xml
  def new
    @post430 = Post430.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post430 }
    end
  end

  # GET /post430s/1/edit
  def edit
    @post430 = Post430.find(params[:id])
  end

  # POST /post430s
  # POST /post430s.xml
  def create
    @post430 = Post430.new(params[:post430])

    respond_to do |format|
      if @post430.save
        format.html { redirect_to(@post430, :notice => 'Post430 was successfully created.') }
        format.xml  { render :xml => @post430, :status => :created, :location => @post430 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post430.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post430s/1
  # PUT /post430s/1.xml
  def update
    @post430 = Post430.find(params[:id])

    respond_to do |format|
      if @post430.update_attributes(params[:post430])
        format.html { redirect_to(@post430, :notice => 'Post430 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post430.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post430s/1
  # DELETE /post430s/1.xml
  def destroy
    @post430 = Post430.find(params[:id])
    @post430.destroy

    respond_to do |format|
      format.html { redirect_to(post430s_url) }
      format.xml  { head :ok }
    end
  end
end
