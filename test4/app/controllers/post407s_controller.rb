class Post407sController < ApplicationController
  # GET /post407s
  # GET /post407s.xml
  def index
    @post407s = Post407.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post407s }
    end
  end

  # GET /post407s/1
  # GET /post407s/1.xml
  def show
    @post407 = Post407.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post407 }
    end
  end

  # GET /post407s/new
  # GET /post407s/new.xml
  def new
    @post407 = Post407.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post407 }
    end
  end

  # GET /post407s/1/edit
  def edit
    @post407 = Post407.find(params[:id])
  end

  # POST /post407s
  # POST /post407s.xml
  def create
    @post407 = Post407.new(params[:post407])

    respond_to do |format|
      if @post407.save
        format.html { redirect_to(@post407, :notice => 'Post407 was successfully created.') }
        format.xml  { render :xml => @post407, :status => :created, :location => @post407 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post407.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post407s/1
  # PUT /post407s/1.xml
  def update
    @post407 = Post407.find(params[:id])

    respond_to do |format|
      if @post407.update_attributes(params[:post407])
        format.html { redirect_to(@post407, :notice => 'Post407 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post407.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post407s/1
  # DELETE /post407s/1.xml
  def destroy
    @post407 = Post407.find(params[:id])
    @post407.destroy

    respond_to do |format|
      format.html { redirect_to(post407s_url) }
      format.xml  { head :ok }
    end
  end
end
