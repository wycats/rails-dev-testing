class Post305sController < ApplicationController
  # GET /post305s
  # GET /post305s.xml
  def index
    @post305s = Post305.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post305s }
    end
  end

  # GET /post305s/1
  # GET /post305s/1.xml
  def show
    @post305 = Post305.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post305 }
    end
  end

  # GET /post305s/new
  # GET /post305s/new.xml
  def new
    @post305 = Post305.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post305 }
    end
  end

  # GET /post305s/1/edit
  def edit
    @post305 = Post305.find(params[:id])
  end

  # POST /post305s
  # POST /post305s.xml
  def create
    @post305 = Post305.new(params[:post305])

    respond_to do |format|
      if @post305.save
        format.html { redirect_to(@post305, :notice => 'Post305 was successfully created.') }
        format.xml  { render :xml => @post305, :status => :created, :location => @post305 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post305.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post305s/1
  # PUT /post305s/1.xml
  def update
    @post305 = Post305.find(params[:id])

    respond_to do |format|
      if @post305.update_attributes(params[:post305])
        format.html { redirect_to(@post305, :notice => 'Post305 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post305.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post305s/1
  # DELETE /post305s/1.xml
  def destroy
    @post305 = Post305.find(params[:id])
    @post305.destroy

    respond_to do |format|
      format.html { redirect_to(post305s_url) }
      format.xml  { head :ok }
    end
  end
end
