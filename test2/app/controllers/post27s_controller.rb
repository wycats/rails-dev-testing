class Post27sController < ApplicationController
  # GET /post27s
  # GET /post27s.xml
  def index
    @post27s = Post27.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post27s }
    end
  end

  # GET /post27s/1
  # GET /post27s/1.xml
  def show
    @post27 = Post27.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post27 }
    end
  end

  # GET /post27s/new
  # GET /post27s/new.xml
  def new
    @post27 = Post27.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post27 }
    end
  end

  # GET /post27s/1/edit
  def edit
    @post27 = Post27.find(params[:id])
  end

  # POST /post27s
  # POST /post27s.xml
  def create
    @post27 = Post27.new(params[:post27])

    respond_to do |format|
      if @post27.save
        format.html { redirect_to(@post27, :notice => 'Post27 was successfully created.') }
        format.xml  { render :xml => @post27, :status => :created, :location => @post27 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post27.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post27s/1
  # PUT /post27s/1.xml
  def update
    @post27 = Post27.find(params[:id])

    respond_to do |format|
      if @post27.update_attributes(params[:post27])
        format.html { redirect_to(@post27, :notice => 'Post27 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post27.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post27s/1
  # DELETE /post27s/1.xml
  def destroy
    @post27 = Post27.find(params[:id])
    @post27.destroy

    respond_to do |format|
      format.html { redirect_to(post27s_url) }
      format.xml  { head :ok }
    end
  end
end
