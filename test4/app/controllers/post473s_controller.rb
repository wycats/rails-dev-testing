class Post473sController < ApplicationController
  # GET /post473s
  # GET /post473s.xml
  def index
    @post473s = Post473.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post473s }
    end
  end

  # GET /post473s/1
  # GET /post473s/1.xml
  def show
    @post473 = Post473.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post473 }
    end
  end

  # GET /post473s/new
  # GET /post473s/new.xml
  def new
    @post473 = Post473.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post473 }
    end
  end

  # GET /post473s/1/edit
  def edit
    @post473 = Post473.find(params[:id])
  end

  # POST /post473s
  # POST /post473s.xml
  def create
    @post473 = Post473.new(params[:post473])

    respond_to do |format|
      if @post473.save
        format.html { redirect_to(@post473, :notice => 'Post473 was successfully created.') }
        format.xml  { render :xml => @post473, :status => :created, :location => @post473 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post473.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post473s/1
  # PUT /post473s/1.xml
  def update
    @post473 = Post473.find(params[:id])

    respond_to do |format|
      if @post473.update_attributes(params[:post473])
        format.html { redirect_to(@post473, :notice => 'Post473 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post473.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post473s/1
  # DELETE /post473s/1.xml
  def destroy
    @post473 = Post473.find(params[:id])
    @post473.destroy

    respond_to do |format|
      format.html { redirect_to(post473s_url) }
      format.xml  { head :ok }
    end
  end
end
