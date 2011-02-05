class Post458sController < ApplicationController
  # GET /post458s
  # GET /post458s.xml
  def index
    @post458s = Post458.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post458s }
    end
  end

  # GET /post458s/1
  # GET /post458s/1.xml
  def show
    @post458 = Post458.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post458 }
    end
  end

  # GET /post458s/new
  # GET /post458s/new.xml
  def new
    @post458 = Post458.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post458 }
    end
  end

  # GET /post458s/1/edit
  def edit
    @post458 = Post458.find(params[:id])
  end

  # POST /post458s
  # POST /post458s.xml
  def create
    @post458 = Post458.new(params[:post458])

    respond_to do |format|
      if @post458.save
        format.html { redirect_to(@post458, :notice => 'Post458 was successfully created.') }
        format.xml  { render :xml => @post458, :status => :created, :location => @post458 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post458.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post458s/1
  # PUT /post458s/1.xml
  def update
    @post458 = Post458.find(params[:id])

    respond_to do |format|
      if @post458.update_attributes(params[:post458])
        format.html { redirect_to(@post458, :notice => 'Post458 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post458.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post458s/1
  # DELETE /post458s/1.xml
  def destroy
    @post458 = Post458.find(params[:id])
    @post458.destroy

    respond_to do |format|
      format.html { redirect_to(post458s_url) }
      format.xml  { head :ok }
    end
  end
end
