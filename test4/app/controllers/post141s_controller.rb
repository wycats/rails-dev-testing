class Post141sController < ApplicationController
  # GET /post141s
  # GET /post141s.xml
  def index
    @post141s = Post141.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post141s }
    end
  end

  # GET /post141s/1
  # GET /post141s/1.xml
  def show
    @post141 = Post141.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post141 }
    end
  end

  # GET /post141s/new
  # GET /post141s/new.xml
  def new
    @post141 = Post141.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post141 }
    end
  end

  # GET /post141s/1/edit
  def edit
    @post141 = Post141.find(params[:id])
  end

  # POST /post141s
  # POST /post141s.xml
  def create
    @post141 = Post141.new(params[:post141])

    respond_to do |format|
      if @post141.save
        format.html { redirect_to(@post141, :notice => 'Post141 was successfully created.') }
        format.xml  { render :xml => @post141, :status => :created, :location => @post141 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post141.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post141s/1
  # PUT /post141s/1.xml
  def update
    @post141 = Post141.find(params[:id])

    respond_to do |format|
      if @post141.update_attributes(params[:post141])
        format.html { redirect_to(@post141, :notice => 'Post141 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post141.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post141s/1
  # DELETE /post141s/1.xml
  def destroy
    @post141 = Post141.find(params[:id])
    @post141.destroy

    respond_to do |format|
      format.html { redirect_to(post141s_url) }
      format.xml  { head :ok }
    end
  end
end
