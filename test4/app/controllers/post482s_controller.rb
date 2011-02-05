class Post482sController < ApplicationController
  # GET /post482s
  # GET /post482s.xml
  def index
    @post482s = Post482.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post482s }
    end
  end

  # GET /post482s/1
  # GET /post482s/1.xml
  def show
    @post482 = Post482.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post482 }
    end
  end

  # GET /post482s/new
  # GET /post482s/new.xml
  def new
    @post482 = Post482.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post482 }
    end
  end

  # GET /post482s/1/edit
  def edit
    @post482 = Post482.find(params[:id])
  end

  # POST /post482s
  # POST /post482s.xml
  def create
    @post482 = Post482.new(params[:post482])

    respond_to do |format|
      if @post482.save
        format.html { redirect_to(@post482, :notice => 'Post482 was successfully created.') }
        format.xml  { render :xml => @post482, :status => :created, :location => @post482 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post482.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post482s/1
  # PUT /post482s/1.xml
  def update
    @post482 = Post482.find(params[:id])

    respond_to do |format|
      if @post482.update_attributes(params[:post482])
        format.html { redirect_to(@post482, :notice => 'Post482 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post482.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post482s/1
  # DELETE /post482s/1.xml
  def destroy
    @post482 = Post482.find(params[:id])
    @post482.destroy

    respond_to do |format|
      format.html { redirect_to(post482s_url) }
      format.xml  { head :ok }
    end
  end
end
