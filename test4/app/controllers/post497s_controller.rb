class Post497sController < ApplicationController
  # GET /post497s
  # GET /post497s.xml
  def index
    @post497s = Post497.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post497s }
    end
  end

  # GET /post497s/1
  # GET /post497s/1.xml
  def show
    @post497 = Post497.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post497 }
    end
  end

  # GET /post497s/new
  # GET /post497s/new.xml
  def new
    @post497 = Post497.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post497 }
    end
  end

  # GET /post497s/1/edit
  def edit
    @post497 = Post497.find(params[:id])
  end

  # POST /post497s
  # POST /post497s.xml
  def create
    @post497 = Post497.new(params[:post497])

    respond_to do |format|
      if @post497.save
        format.html { redirect_to(@post497, :notice => 'Post497 was successfully created.') }
        format.xml  { render :xml => @post497, :status => :created, :location => @post497 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post497.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post497s/1
  # PUT /post497s/1.xml
  def update
    @post497 = Post497.find(params[:id])

    respond_to do |format|
      if @post497.update_attributes(params[:post497])
        format.html { redirect_to(@post497, :notice => 'Post497 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post497.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post497s/1
  # DELETE /post497s/1.xml
  def destroy
    @post497 = Post497.find(params[:id])
    @post497.destroy

    respond_to do |format|
      format.html { redirect_to(post497s_url) }
      format.xml  { head :ok }
    end
  end
end
