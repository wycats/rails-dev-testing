class Post456sController < ApplicationController
  # GET /post456s
  # GET /post456s.xml
  def index
    @post456s = Post456.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post456s }
    end
  end

  # GET /post456s/1
  # GET /post456s/1.xml
  def show
    @post456 = Post456.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post456 }
    end
  end

  # GET /post456s/new
  # GET /post456s/new.xml
  def new
    @post456 = Post456.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post456 }
    end
  end

  # GET /post456s/1/edit
  def edit
    @post456 = Post456.find(params[:id])
  end

  # POST /post456s
  # POST /post456s.xml
  def create
    @post456 = Post456.new(params[:post456])

    respond_to do |format|
      if @post456.save
        format.html { redirect_to(@post456, :notice => 'Post456 was successfully created.') }
        format.xml  { render :xml => @post456, :status => :created, :location => @post456 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post456.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post456s/1
  # PUT /post456s/1.xml
  def update
    @post456 = Post456.find(params[:id])

    respond_to do |format|
      if @post456.update_attributes(params[:post456])
        format.html { redirect_to(@post456, :notice => 'Post456 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post456.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post456s/1
  # DELETE /post456s/1.xml
  def destroy
    @post456 = Post456.find(params[:id])
    @post456.destroy

    respond_to do |format|
      format.html { redirect_to(post456s_url) }
      format.xml  { head :ok }
    end
  end
end
