class Post132sController < ApplicationController
  # GET /post132s
  # GET /post132s.xml
  def index
    @post132s = Post132.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post132s }
    end
  end

  # GET /post132s/1
  # GET /post132s/1.xml
  def show
    @post132 = Post132.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post132 }
    end
  end

  # GET /post132s/new
  # GET /post132s/new.xml
  def new
    @post132 = Post132.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post132 }
    end
  end

  # GET /post132s/1/edit
  def edit
    @post132 = Post132.find(params[:id])
  end

  # POST /post132s
  # POST /post132s.xml
  def create
    @post132 = Post132.new(params[:post132])

    respond_to do |format|
      if @post132.save
        format.html { redirect_to(@post132, :notice => 'Post132 was successfully created.') }
        format.xml  { render :xml => @post132, :status => :created, :location => @post132 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post132.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post132s/1
  # PUT /post132s/1.xml
  def update
    @post132 = Post132.find(params[:id])

    respond_to do |format|
      if @post132.update_attributes(params[:post132])
        format.html { redirect_to(@post132, :notice => 'Post132 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post132.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post132s/1
  # DELETE /post132s/1.xml
  def destroy
    @post132 = Post132.find(params[:id])
    @post132.destroy

    respond_to do |format|
      format.html { redirect_to(post132s_url) }
      format.xml  { head :ok }
    end
  end
end
