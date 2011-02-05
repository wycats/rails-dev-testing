class Post75sController < ApplicationController
  # GET /post75s
  # GET /post75s.xml
  def index
    @post75s = Post75.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post75s }
    end
  end

  # GET /post75s/1
  # GET /post75s/1.xml
  def show
    @post75 = Post75.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post75 }
    end
  end

  # GET /post75s/new
  # GET /post75s/new.xml
  def new
    @post75 = Post75.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post75 }
    end
  end

  # GET /post75s/1/edit
  def edit
    @post75 = Post75.find(params[:id])
  end

  # POST /post75s
  # POST /post75s.xml
  def create
    @post75 = Post75.new(params[:post75])

    respond_to do |format|
      if @post75.save
        format.html { redirect_to(@post75, :notice => 'Post75 was successfully created.') }
        format.xml  { render :xml => @post75, :status => :created, :location => @post75 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post75.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post75s/1
  # PUT /post75s/1.xml
  def update
    @post75 = Post75.find(params[:id])

    respond_to do |format|
      if @post75.update_attributes(params[:post75])
        format.html { redirect_to(@post75, :notice => 'Post75 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post75.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post75s/1
  # DELETE /post75s/1.xml
  def destroy
    @post75 = Post75.find(params[:id])
    @post75.destroy

    respond_to do |format|
      format.html { redirect_to(post75s_url) }
      format.xml  { head :ok }
    end
  end
end
