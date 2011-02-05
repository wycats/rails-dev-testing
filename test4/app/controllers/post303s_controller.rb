class Post303sController < ApplicationController
  # GET /post303s
  # GET /post303s.xml
  def index
    @post303s = Post303.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post303s }
    end
  end

  # GET /post303s/1
  # GET /post303s/1.xml
  def show
    @post303 = Post303.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post303 }
    end
  end

  # GET /post303s/new
  # GET /post303s/new.xml
  def new
    @post303 = Post303.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post303 }
    end
  end

  # GET /post303s/1/edit
  def edit
    @post303 = Post303.find(params[:id])
  end

  # POST /post303s
  # POST /post303s.xml
  def create
    @post303 = Post303.new(params[:post303])

    respond_to do |format|
      if @post303.save
        format.html { redirect_to(@post303, :notice => 'Post303 was successfully created.') }
        format.xml  { render :xml => @post303, :status => :created, :location => @post303 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post303.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post303s/1
  # PUT /post303s/1.xml
  def update
    @post303 = Post303.find(params[:id])

    respond_to do |format|
      if @post303.update_attributes(params[:post303])
        format.html { redirect_to(@post303, :notice => 'Post303 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post303.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post303s/1
  # DELETE /post303s/1.xml
  def destroy
    @post303 = Post303.find(params[:id])
    @post303.destroy

    respond_to do |format|
      format.html { redirect_to(post303s_url) }
      format.xml  { head :ok }
    end
  end
end
