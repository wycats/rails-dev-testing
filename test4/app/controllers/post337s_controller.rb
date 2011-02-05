class Post337sController < ApplicationController
  # GET /post337s
  # GET /post337s.xml
  def index
    @post337s = Post337.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post337s }
    end
  end

  # GET /post337s/1
  # GET /post337s/1.xml
  def show
    @post337 = Post337.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post337 }
    end
  end

  # GET /post337s/new
  # GET /post337s/new.xml
  def new
    @post337 = Post337.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post337 }
    end
  end

  # GET /post337s/1/edit
  def edit
    @post337 = Post337.find(params[:id])
  end

  # POST /post337s
  # POST /post337s.xml
  def create
    @post337 = Post337.new(params[:post337])

    respond_to do |format|
      if @post337.save
        format.html { redirect_to(@post337, :notice => 'Post337 was successfully created.') }
        format.xml  { render :xml => @post337, :status => :created, :location => @post337 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post337.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post337s/1
  # PUT /post337s/1.xml
  def update
    @post337 = Post337.find(params[:id])

    respond_to do |format|
      if @post337.update_attributes(params[:post337])
        format.html { redirect_to(@post337, :notice => 'Post337 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post337.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post337s/1
  # DELETE /post337s/1.xml
  def destroy
    @post337 = Post337.find(params[:id])
    @post337.destroy

    respond_to do |format|
      format.html { redirect_to(post337s_url) }
      format.xml  { head :ok }
    end
  end
end
