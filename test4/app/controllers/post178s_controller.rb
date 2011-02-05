class Post178sController < ApplicationController
  # GET /post178s
  # GET /post178s.xml
  def index
    @post178s = Post178.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post178s }
    end
  end

  # GET /post178s/1
  # GET /post178s/1.xml
  def show
    @post178 = Post178.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post178 }
    end
  end

  # GET /post178s/new
  # GET /post178s/new.xml
  def new
    @post178 = Post178.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post178 }
    end
  end

  # GET /post178s/1/edit
  def edit
    @post178 = Post178.find(params[:id])
  end

  # POST /post178s
  # POST /post178s.xml
  def create
    @post178 = Post178.new(params[:post178])

    respond_to do |format|
      if @post178.save
        format.html { redirect_to(@post178, :notice => 'Post178 was successfully created.') }
        format.xml  { render :xml => @post178, :status => :created, :location => @post178 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post178.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post178s/1
  # PUT /post178s/1.xml
  def update
    @post178 = Post178.find(params[:id])

    respond_to do |format|
      if @post178.update_attributes(params[:post178])
        format.html { redirect_to(@post178, :notice => 'Post178 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post178.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post178s/1
  # DELETE /post178s/1.xml
  def destroy
    @post178 = Post178.find(params[:id])
    @post178.destroy

    respond_to do |format|
      format.html { redirect_to(post178s_url) }
      format.xml  { head :ok }
    end
  end
end
