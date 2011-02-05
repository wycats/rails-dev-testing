class Post9sController < ApplicationController
  # GET /post9s
  # GET /post9s.xml
  def index
    @post9s = Post9.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post9s }
    end
  end

  # GET /post9s/1
  # GET /post9s/1.xml
  def show
    @post9 = Post9.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post9 }
    end
  end

  # GET /post9s/new
  # GET /post9s/new.xml
  def new
    @post9 = Post9.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post9 }
    end
  end

  # GET /post9s/1/edit
  def edit
    @post9 = Post9.find(params[:id])
  end

  # POST /post9s
  # POST /post9s.xml
  def create
    @post9 = Post9.new(params[:post9])

    respond_to do |format|
      if @post9.save
        format.html { redirect_to(@post9, :notice => 'Post9 was successfully created.') }
        format.xml  { render :xml => @post9, :status => :created, :location => @post9 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post9.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post9s/1
  # PUT /post9s/1.xml
  def update
    @post9 = Post9.find(params[:id])

    respond_to do |format|
      if @post9.update_attributes(params[:post9])
        format.html { redirect_to(@post9, :notice => 'Post9 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post9.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post9s/1
  # DELETE /post9s/1.xml
  def destroy
    @post9 = Post9.find(params[:id])
    @post9.destroy

    respond_to do |format|
      format.html { redirect_to(post9s_url) }
      format.xml  { head :ok }
    end
  end
end
