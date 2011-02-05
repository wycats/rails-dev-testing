class Post22sController < ApplicationController
  # GET /post22s
  # GET /post22s.xml
  def index
    @post22s = Post22.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post22s }
    end
  end

  # GET /post22s/1
  # GET /post22s/1.xml
  def show
    @post22 = Post22.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post22 }
    end
  end

  # GET /post22s/new
  # GET /post22s/new.xml
  def new
    @post22 = Post22.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post22 }
    end
  end

  # GET /post22s/1/edit
  def edit
    @post22 = Post22.find(params[:id])
  end

  # POST /post22s
  # POST /post22s.xml
  def create
    @post22 = Post22.new(params[:post22])

    respond_to do |format|
      if @post22.save
        format.html { redirect_to(@post22, :notice => 'Post22 was successfully created.') }
        format.xml  { render :xml => @post22, :status => :created, :location => @post22 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post22.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post22s/1
  # PUT /post22s/1.xml
  def update
    @post22 = Post22.find(params[:id])

    respond_to do |format|
      if @post22.update_attributes(params[:post22])
        format.html { redirect_to(@post22, :notice => 'Post22 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post22.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post22s/1
  # DELETE /post22s/1.xml
  def destroy
    @post22 = Post22.find(params[:id])
    @post22.destroy

    respond_to do |format|
      format.html { redirect_to(post22s_url) }
      format.xml  { head :ok }
    end
  end
end
