class Post51sController < ApplicationController
  # GET /post51s
  # GET /post51s.xml
  def index
    @post51s = Post51.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post51s }
    end
  end

  # GET /post51s/1
  # GET /post51s/1.xml
  def show
    @post51 = Post51.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post51 }
    end
  end

  # GET /post51s/new
  # GET /post51s/new.xml
  def new
    @post51 = Post51.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post51 }
    end
  end

  # GET /post51s/1/edit
  def edit
    @post51 = Post51.find(params[:id])
  end

  # POST /post51s
  # POST /post51s.xml
  def create
    @post51 = Post51.new(params[:post51])

    respond_to do |format|
      if @post51.save
        format.html { redirect_to(@post51, :notice => 'Post51 was successfully created.') }
        format.xml  { render :xml => @post51, :status => :created, :location => @post51 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post51.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post51s/1
  # PUT /post51s/1.xml
  def update
    @post51 = Post51.find(params[:id])

    respond_to do |format|
      if @post51.update_attributes(params[:post51])
        format.html { redirect_to(@post51, :notice => 'Post51 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post51.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post51s/1
  # DELETE /post51s/1.xml
  def destroy
    @post51 = Post51.find(params[:id])
    @post51.destroy

    respond_to do |format|
      format.html { redirect_to(post51s_url) }
      format.xml  { head :ok }
    end
  end
end
