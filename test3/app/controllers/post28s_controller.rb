class Post28sController < ApplicationController
  # GET /post28s
  # GET /post28s.xml
  def index
    @post28s = Post28.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post28s }
    end
  end

  # GET /post28s/1
  # GET /post28s/1.xml
  def show
    @post28 = Post28.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post28 }
    end
  end

  # GET /post28s/new
  # GET /post28s/new.xml
  def new
    @post28 = Post28.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post28 }
    end
  end

  # GET /post28s/1/edit
  def edit
    @post28 = Post28.find(params[:id])
  end

  # POST /post28s
  # POST /post28s.xml
  def create
    @post28 = Post28.new(params[:post28])

    respond_to do |format|
      if @post28.save
        format.html { redirect_to(@post28, :notice => 'Post28 was successfully created.') }
        format.xml  { render :xml => @post28, :status => :created, :location => @post28 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post28.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post28s/1
  # PUT /post28s/1.xml
  def update
    @post28 = Post28.find(params[:id])

    respond_to do |format|
      if @post28.update_attributes(params[:post28])
        format.html { redirect_to(@post28, :notice => 'Post28 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post28.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post28s/1
  # DELETE /post28s/1.xml
  def destroy
    @post28 = Post28.find(params[:id])
    @post28.destroy

    respond_to do |format|
      format.html { redirect_to(post28s_url) }
      format.xml  { head :ok }
    end
  end
end
