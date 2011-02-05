class Post398sController < ApplicationController
  # GET /post398s
  # GET /post398s.xml
  def index
    @post398s = Post398.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post398s }
    end
  end

  # GET /post398s/1
  # GET /post398s/1.xml
  def show
    @post398 = Post398.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post398 }
    end
  end

  # GET /post398s/new
  # GET /post398s/new.xml
  def new
    @post398 = Post398.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post398 }
    end
  end

  # GET /post398s/1/edit
  def edit
    @post398 = Post398.find(params[:id])
  end

  # POST /post398s
  # POST /post398s.xml
  def create
    @post398 = Post398.new(params[:post398])

    respond_to do |format|
      if @post398.save
        format.html { redirect_to(@post398, :notice => 'Post398 was successfully created.') }
        format.xml  { render :xml => @post398, :status => :created, :location => @post398 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post398.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post398s/1
  # PUT /post398s/1.xml
  def update
    @post398 = Post398.find(params[:id])

    respond_to do |format|
      if @post398.update_attributes(params[:post398])
        format.html { redirect_to(@post398, :notice => 'Post398 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post398.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post398s/1
  # DELETE /post398s/1.xml
  def destroy
    @post398 = Post398.find(params[:id])
    @post398.destroy

    respond_to do |format|
      format.html { redirect_to(post398s_url) }
      format.xml  { head :ok }
    end
  end
end
