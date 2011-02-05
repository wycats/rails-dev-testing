class Post48sController < ApplicationController
  # GET /post48s
  # GET /post48s.xml
  def index
    @post48s = Post48.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post48s }
    end
  end

  # GET /post48s/1
  # GET /post48s/1.xml
  def show
    @post48 = Post48.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post48 }
    end
  end

  # GET /post48s/new
  # GET /post48s/new.xml
  def new
    @post48 = Post48.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post48 }
    end
  end

  # GET /post48s/1/edit
  def edit
    @post48 = Post48.find(params[:id])
  end

  # POST /post48s
  # POST /post48s.xml
  def create
    @post48 = Post48.new(params[:post48])

    respond_to do |format|
      if @post48.save
        format.html { redirect_to(@post48, :notice => 'Post48 was successfully created.') }
        format.xml  { render :xml => @post48, :status => :created, :location => @post48 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post48.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post48s/1
  # PUT /post48s/1.xml
  def update
    @post48 = Post48.find(params[:id])

    respond_to do |format|
      if @post48.update_attributes(params[:post48])
        format.html { redirect_to(@post48, :notice => 'Post48 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post48.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post48s/1
  # DELETE /post48s/1.xml
  def destroy
    @post48 = Post48.find(params[:id])
    @post48.destroy

    respond_to do |format|
      format.html { redirect_to(post48s_url) }
      format.xml  { head :ok }
    end
  end
end
