class Post165sController < ApplicationController
  # GET /post165s
  # GET /post165s.xml
  def index
    @post165s = Post165.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post165s }
    end
  end

  # GET /post165s/1
  # GET /post165s/1.xml
  def show
    @post165 = Post165.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post165 }
    end
  end

  # GET /post165s/new
  # GET /post165s/new.xml
  def new
    @post165 = Post165.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post165 }
    end
  end

  # GET /post165s/1/edit
  def edit
    @post165 = Post165.find(params[:id])
  end

  # POST /post165s
  # POST /post165s.xml
  def create
    @post165 = Post165.new(params[:post165])

    respond_to do |format|
      if @post165.save
        format.html { redirect_to(@post165, :notice => 'Post165 was successfully created.') }
        format.xml  { render :xml => @post165, :status => :created, :location => @post165 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post165.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post165s/1
  # PUT /post165s/1.xml
  def update
    @post165 = Post165.find(params[:id])

    respond_to do |format|
      if @post165.update_attributes(params[:post165])
        format.html { redirect_to(@post165, :notice => 'Post165 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post165.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post165s/1
  # DELETE /post165s/1.xml
  def destroy
    @post165 = Post165.find(params[:id])
    @post165.destroy

    respond_to do |format|
      format.html { redirect_to(post165s_url) }
      format.xml  { head :ok }
    end
  end
end
