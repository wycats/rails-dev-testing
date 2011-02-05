class Post70sController < ApplicationController
  # GET /post70s
  # GET /post70s.xml
  def index
    @post70s = Post70.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post70s }
    end
  end

  # GET /post70s/1
  # GET /post70s/1.xml
  def show
    @post70 = Post70.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post70 }
    end
  end

  # GET /post70s/new
  # GET /post70s/new.xml
  def new
    @post70 = Post70.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post70 }
    end
  end

  # GET /post70s/1/edit
  def edit
    @post70 = Post70.find(params[:id])
  end

  # POST /post70s
  # POST /post70s.xml
  def create
    @post70 = Post70.new(params[:post70])

    respond_to do |format|
      if @post70.save
        format.html { redirect_to(@post70, :notice => 'Post70 was successfully created.') }
        format.xml  { render :xml => @post70, :status => :created, :location => @post70 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post70.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post70s/1
  # PUT /post70s/1.xml
  def update
    @post70 = Post70.find(params[:id])

    respond_to do |format|
      if @post70.update_attributes(params[:post70])
        format.html { redirect_to(@post70, :notice => 'Post70 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post70.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post70s/1
  # DELETE /post70s/1.xml
  def destroy
    @post70 = Post70.find(params[:id])
    @post70.destroy

    respond_to do |format|
      format.html { redirect_to(post70s_url) }
      format.xml  { head :ok }
    end
  end
end
