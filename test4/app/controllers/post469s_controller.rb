class Post469sController < ApplicationController
  # GET /post469s
  # GET /post469s.xml
  def index
    @post469s = Post469.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post469s }
    end
  end

  # GET /post469s/1
  # GET /post469s/1.xml
  def show
    @post469 = Post469.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post469 }
    end
  end

  # GET /post469s/new
  # GET /post469s/new.xml
  def new
    @post469 = Post469.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post469 }
    end
  end

  # GET /post469s/1/edit
  def edit
    @post469 = Post469.find(params[:id])
  end

  # POST /post469s
  # POST /post469s.xml
  def create
    @post469 = Post469.new(params[:post469])

    respond_to do |format|
      if @post469.save
        format.html { redirect_to(@post469, :notice => 'Post469 was successfully created.') }
        format.xml  { render :xml => @post469, :status => :created, :location => @post469 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post469.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post469s/1
  # PUT /post469s/1.xml
  def update
    @post469 = Post469.find(params[:id])

    respond_to do |format|
      if @post469.update_attributes(params[:post469])
        format.html { redirect_to(@post469, :notice => 'Post469 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post469.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post469s/1
  # DELETE /post469s/1.xml
  def destroy
    @post469 = Post469.find(params[:id])
    @post469.destroy

    respond_to do |format|
      format.html { redirect_to(post469s_url) }
      format.xml  { head :ok }
    end
  end
end
