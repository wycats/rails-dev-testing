class Post15sController < ApplicationController
  # GET /post15s
  # GET /post15s.xml
  def index
    @post15s = Post15.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post15s }
    end
  end

  # GET /post15s/1
  # GET /post15s/1.xml
  def show
    @post15 = Post15.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post15 }
    end
  end

  # GET /post15s/new
  # GET /post15s/new.xml
  def new
    @post15 = Post15.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post15 }
    end
  end

  # GET /post15s/1/edit
  def edit
    @post15 = Post15.find(params[:id])
  end

  # POST /post15s
  # POST /post15s.xml
  def create
    @post15 = Post15.new(params[:post15])

    respond_to do |format|
      if @post15.save
        format.html { redirect_to(@post15, :notice => 'Post15 was successfully created.') }
        format.xml  { render :xml => @post15, :status => :created, :location => @post15 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post15.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post15s/1
  # PUT /post15s/1.xml
  def update
    @post15 = Post15.find(params[:id])

    respond_to do |format|
      if @post15.update_attributes(params[:post15])
        format.html { redirect_to(@post15, :notice => 'Post15 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post15.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post15s/1
  # DELETE /post15s/1.xml
  def destroy
    @post15 = Post15.find(params[:id])
    @post15.destroy

    respond_to do |format|
      format.html { redirect_to(post15s_url) }
      format.xml  { head :ok }
    end
  end
end
