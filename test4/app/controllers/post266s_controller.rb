class Post266sController < ApplicationController
  # GET /post266s
  # GET /post266s.xml
  def index
    @post266s = Post266.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post266s }
    end
  end

  # GET /post266s/1
  # GET /post266s/1.xml
  def show
    @post266 = Post266.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post266 }
    end
  end

  # GET /post266s/new
  # GET /post266s/new.xml
  def new
    @post266 = Post266.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post266 }
    end
  end

  # GET /post266s/1/edit
  def edit
    @post266 = Post266.find(params[:id])
  end

  # POST /post266s
  # POST /post266s.xml
  def create
    @post266 = Post266.new(params[:post266])

    respond_to do |format|
      if @post266.save
        format.html { redirect_to(@post266, :notice => 'Post266 was successfully created.') }
        format.xml  { render :xml => @post266, :status => :created, :location => @post266 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post266.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post266s/1
  # PUT /post266s/1.xml
  def update
    @post266 = Post266.find(params[:id])

    respond_to do |format|
      if @post266.update_attributes(params[:post266])
        format.html { redirect_to(@post266, :notice => 'Post266 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post266.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post266s/1
  # DELETE /post266s/1.xml
  def destroy
    @post266 = Post266.find(params[:id])
    @post266.destroy

    respond_to do |format|
      format.html { redirect_to(post266s_url) }
      format.xml  { head :ok }
    end
  end
end
