class Post11sController < ApplicationController
  # GET /post11s
  # GET /post11s.xml
  def index
    @post11s = Post11.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post11s }
    end
  end

  # GET /post11s/1
  # GET /post11s/1.xml
  def show
    @post11 = Post11.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post11 }
    end
  end

  # GET /post11s/new
  # GET /post11s/new.xml
  def new
    @post11 = Post11.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post11 }
    end
  end

  # GET /post11s/1/edit
  def edit
    @post11 = Post11.find(params[:id])
  end

  # POST /post11s
  # POST /post11s.xml
  def create
    @post11 = Post11.new(params[:post11])

    respond_to do |format|
      if @post11.save
        format.html { redirect_to(@post11, :notice => 'Post11 was successfully created.') }
        format.xml  { render :xml => @post11, :status => :created, :location => @post11 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post11.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post11s/1
  # PUT /post11s/1.xml
  def update
    @post11 = Post11.find(params[:id])

    respond_to do |format|
      if @post11.update_attributes(params[:post11])
        format.html { redirect_to(@post11, :notice => 'Post11 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post11.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post11s/1
  # DELETE /post11s/1.xml
  def destroy
    @post11 = Post11.find(params[:id])
    @post11.destroy

    respond_to do |format|
      format.html { redirect_to(post11s_url) }
      format.xml  { head :ok }
    end
  end
end
