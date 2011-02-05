class Post34sController < ApplicationController
  # GET /post34s
  # GET /post34s.xml
  def index
    @post34s = Post34.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post34s }
    end
  end

  # GET /post34s/1
  # GET /post34s/1.xml
  def show
    @post34 = Post34.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post34 }
    end
  end

  # GET /post34s/new
  # GET /post34s/new.xml
  def new
    @post34 = Post34.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post34 }
    end
  end

  # GET /post34s/1/edit
  def edit
    @post34 = Post34.find(params[:id])
  end

  # POST /post34s
  # POST /post34s.xml
  def create
    @post34 = Post34.new(params[:post34])

    respond_to do |format|
      if @post34.save
        format.html { redirect_to(@post34, :notice => 'Post34 was successfully created.') }
        format.xml  { render :xml => @post34, :status => :created, :location => @post34 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post34.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post34s/1
  # PUT /post34s/1.xml
  def update
    @post34 = Post34.find(params[:id])

    respond_to do |format|
      if @post34.update_attributes(params[:post34])
        format.html { redirect_to(@post34, :notice => 'Post34 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post34.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post34s/1
  # DELETE /post34s/1.xml
  def destroy
    @post34 = Post34.find(params[:id])
    @post34.destroy

    respond_to do |format|
      format.html { redirect_to(post34s_url) }
      format.xml  { head :ok }
    end
  end
end
