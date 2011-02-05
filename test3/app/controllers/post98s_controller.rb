class Post98sController < ApplicationController
  # GET /post98s
  # GET /post98s.xml
  def index
    @post98s = Post98.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post98s }
    end
  end

  # GET /post98s/1
  # GET /post98s/1.xml
  def show
    @post98 = Post98.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post98 }
    end
  end

  # GET /post98s/new
  # GET /post98s/new.xml
  def new
    @post98 = Post98.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post98 }
    end
  end

  # GET /post98s/1/edit
  def edit
    @post98 = Post98.find(params[:id])
  end

  # POST /post98s
  # POST /post98s.xml
  def create
    @post98 = Post98.new(params[:post98])

    respond_to do |format|
      if @post98.save
        format.html { redirect_to(@post98, :notice => 'Post98 was successfully created.') }
        format.xml  { render :xml => @post98, :status => :created, :location => @post98 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post98.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post98s/1
  # PUT /post98s/1.xml
  def update
    @post98 = Post98.find(params[:id])

    respond_to do |format|
      if @post98.update_attributes(params[:post98])
        format.html { redirect_to(@post98, :notice => 'Post98 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post98.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post98s/1
  # DELETE /post98s/1.xml
  def destroy
    @post98 = Post98.find(params[:id])
    @post98.destroy

    respond_to do |format|
      format.html { redirect_to(post98s_url) }
      format.xml  { head :ok }
    end
  end
end
