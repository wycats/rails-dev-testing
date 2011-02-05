class Post445sController < ApplicationController
  # GET /post445s
  # GET /post445s.xml
  def index
    @post445s = Post445.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post445s }
    end
  end

  # GET /post445s/1
  # GET /post445s/1.xml
  def show
    @post445 = Post445.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post445 }
    end
  end

  # GET /post445s/new
  # GET /post445s/new.xml
  def new
    @post445 = Post445.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post445 }
    end
  end

  # GET /post445s/1/edit
  def edit
    @post445 = Post445.find(params[:id])
  end

  # POST /post445s
  # POST /post445s.xml
  def create
    @post445 = Post445.new(params[:post445])

    respond_to do |format|
      if @post445.save
        format.html { redirect_to(@post445, :notice => 'Post445 was successfully created.') }
        format.xml  { render :xml => @post445, :status => :created, :location => @post445 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post445.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post445s/1
  # PUT /post445s/1.xml
  def update
    @post445 = Post445.find(params[:id])

    respond_to do |format|
      if @post445.update_attributes(params[:post445])
        format.html { redirect_to(@post445, :notice => 'Post445 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post445.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post445s/1
  # DELETE /post445s/1.xml
  def destroy
    @post445 = Post445.find(params[:id])
    @post445.destroy

    respond_to do |format|
      format.html { redirect_to(post445s_url) }
      format.xml  { head :ok }
    end
  end
end
