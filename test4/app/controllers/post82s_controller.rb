class Post82sController < ApplicationController
  # GET /post82s
  # GET /post82s.xml
  def index
    @post82s = Post82.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post82s }
    end
  end

  # GET /post82s/1
  # GET /post82s/1.xml
  def show
    @post82 = Post82.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post82 }
    end
  end

  # GET /post82s/new
  # GET /post82s/new.xml
  def new
    @post82 = Post82.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post82 }
    end
  end

  # GET /post82s/1/edit
  def edit
    @post82 = Post82.find(params[:id])
  end

  # POST /post82s
  # POST /post82s.xml
  def create
    @post82 = Post82.new(params[:post82])

    respond_to do |format|
      if @post82.save
        format.html { redirect_to(@post82, :notice => 'Post82 was successfully created.') }
        format.xml  { render :xml => @post82, :status => :created, :location => @post82 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post82.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post82s/1
  # PUT /post82s/1.xml
  def update
    @post82 = Post82.find(params[:id])

    respond_to do |format|
      if @post82.update_attributes(params[:post82])
        format.html { redirect_to(@post82, :notice => 'Post82 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post82.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post82s/1
  # DELETE /post82s/1.xml
  def destroy
    @post82 = Post82.find(params[:id])
    @post82.destroy

    respond_to do |format|
      format.html { redirect_to(post82s_url) }
      format.xml  { head :ok }
    end
  end
end
