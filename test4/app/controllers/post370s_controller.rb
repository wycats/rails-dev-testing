class Post370sController < ApplicationController
  # GET /post370s
  # GET /post370s.xml
  def index
    @post370s = Post370.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post370s }
    end
  end

  # GET /post370s/1
  # GET /post370s/1.xml
  def show
    @post370 = Post370.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post370 }
    end
  end

  # GET /post370s/new
  # GET /post370s/new.xml
  def new
    @post370 = Post370.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post370 }
    end
  end

  # GET /post370s/1/edit
  def edit
    @post370 = Post370.find(params[:id])
  end

  # POST /post370s
  # POST /post370s.xml
  def create
    @post370 = Post370.new(params[:post370])

    respond_to do |format|
      if @post370.save
        format.html { redirect_to(@post370, :notice => 'Post370 was successfully created.') }
        format.xml  { render :xml => @post370, :status => :created, :location => @post370 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post370.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post370s/1
  # PUT /post370s/1.xml
  def update
    @post370 = Post370.find(params[:id])

    respond_to do |format|
      if @post370.update_attributes(params[:post370])
        format.html { redirect_to(@post370, :notice => 'Post370 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post370.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post370s/1
  # DELETE /post370s/1.xml
  def destroy
    @post370 = Post370.find(params[:id])
    @post370.destroy

    respond_to do |format|
      format.html { redirect_to(post370s_url) }
      format.xml  { head :ok }
    end
  end
end
