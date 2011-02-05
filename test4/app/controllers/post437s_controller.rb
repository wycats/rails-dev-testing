class Post437sController < ApplicationController
  # GET /post437s
  # GET /post437s.xml
  def index
    @post437s = Post437.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post437s }
    end
  end

  # GET /post437s/1
  # GET /post437s/1.xml
  def show
    @post437 = Post437.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post437 }
    end
  end

  # GET /post437s/new
  # GET /post437s/new.xml
  def new
    @post437 = Post437.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post437 }
    end
  end

  # GET /post437s/1/edit
  def edit
    @post437 = Post437.find(params[:id])
  end

  # POST /post437s
  # POST /post437s.xml
  def create
    @post437 = Post437.new(params[:post437])

    respond_to do |format|
      if @post437.save
        format.html { redirect_to(@post437, :notice => 'Post437 was successfully created.') }
        format.xml  { render :xml => @post437, :status => :created, :location => @post437 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post437.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post437s/1
  # PUT /post437s/1.xml
  def update
    @post437 = Post437.find(params[:id])

    respond_to do |format|
      if @post437.update_attributes(params[:post437])
        format.html { redirect_to(@post437, :notice => 'Post437 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post437.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post437s/1
  # DELETE /post437s/1.xml
  def destroy
    @post437 = Post437.find(params[:id])
    @post437.destroy

    respond_to do |format|
      format.html { redirect_to(post437s_url) }
      format.xml  { head :ok }
    end
  end
end
