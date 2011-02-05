class Post443sController < ApplicationController
  # GET /post443s
  # GET /post443s.xml
  def index
    @post443s = Post443.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post443s }
    end
  end

  # GET /post443s/1
  # GET /post443s/1.xml
  def show
    @post443 = Post443.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post443 }
    end
  end

  # GET /post443s/new
  # GET /post443s/new.xml
  def new
    @post443 = Post443.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post443 }
    end
  end

  # GET /post443s/1/edit
  def edit
    @post443 = Post443.find(params[:id])
  end

  # POST /post443s
  # POST /post443s.xml
  def create
    @post443 = Post443.new(params[:post443])

    respond_to do |format|
      if @post443.save
        format.html { redirect_to(@post443, :notice => 'Post443 was successfully created.') }
        format.xml  { render :xml => @post443, :status => :created, :location => @post443 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post443.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post443s/1
  # PUT /post443s/1.xml
  def update
    @post443 = Post443.find(params[:id])

    respond_to do |format|
      if @post443.update_attributes(params[:post443])
        format.html { redirect_to(@post443, :notice => 'Post443 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post443.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post443s/1
  # DELETE /post443s/1.xml
  def destroy
    @post443 = Post443.find(params[:id])
    @post443.destroy

    respond_to do |format|
      format.html { redirect_to(post443s_url) }
      format.xml  { head :ok }
    end
  end
end
