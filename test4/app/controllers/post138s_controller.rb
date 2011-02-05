class Post138sController < ApplicationController
  # GET /post138s
  # GET /post138s.xml
  def index
    @post138s = Post138.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post138s }
    end
  end

  # GET /post138s/1
  # GET /post138s/1.xml
  def show
    @post138 = Post138.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post138 }
    end
  end

  # GET /post138s/new
  # GET /post138s/new.xml
  def new
    @post138 = Post138.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post138 }
    end
  end

  # GET /post138s/1/edit
  def edit
    @post138 = Post138.find(params[:id])
  end

  # POST /post138s
  # POST /post138s.xml
  def create
    @post138 = Post138.new(params[:post138])

    respond_to do |format|
      if @post138.save
        format.html { redirect_to(@post138, :notice => 'Post138 was successfully created.') }
        format.xml  { render :xml => @post138, :status => :created, :location => @post138 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post138.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post138s/1
  # PUT /post138s/1.xml
  def update
    @post138 = Post138.find(params[:id])

    respond_to do |format|
      if @post138.update_attributes(params[:post138])
        format.html { redirect_to(@post138, :notice => 'Post138 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post138.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post138s/1
  # DELETE /post138s/1.xml
  def destroy
    @post138 = Post138.find(params[:id])
    @post138.destroy

    respond_to do |format|
      format.html { redirect_to(post138s_url) }
      format.xml  { head :ok }
    end
  end
end
