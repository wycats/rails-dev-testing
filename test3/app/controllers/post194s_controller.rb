class Post194sController < ApplicationController
  # GET /post194s
  # GET /post194s.xml
  def index
    @post194s = Post194.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post194s }
    end
  end

  # GET /post194s/1
  # GET /post194s/1.xml
  def show
    @post194 = Post194.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post194 }
    end
  end

  # GET /post194s/new
  # GET /post194s/new.xml
  def new
    @post194 = Post194.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post194 }
    end
  end

  # GET /post194s/1/edit
  def edit
    @post194 = Post194.find(params[:id])
  end

  # POST /post194s
  # POST /post194s.xml
  def create
    @post194 = Post194.new(params[:post194])

    respond_to do |format|
      if @post194.save
        format.html { redirect_to(@post194, :notice => 'Post194 was successfully created.') }
        format.xml  { render :xml => @post194, :status => :created, :location => @post194 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post194.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post194s/1
  # PUT /post194s/1.xml
  def update
    @post194 = Post194.find(params[:id])

    respond_to do |format|
      if @post194.update_attributes(params[:post194])
        format.html { redirect_to(@post194, :notice => 'Post194 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post194.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post194s/1
  # DELETE /post194s/1.xml
  def destroy
    @post194 = Post194.find(params[:id])
    @post194.destroy

    respond_to do |format|
      format.html { redirect_to(post194s_url) }
      format.xml  { head :ok }
    end
  end
end
