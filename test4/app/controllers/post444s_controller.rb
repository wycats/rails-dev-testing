class Post444sController < ApplicationController
  # GET /post444s
  # GET /post444s.xml
  def index
    @post444s = Post444.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post444s }
    end
  end

  # GET /post444s/1
  # GET /post444s/1.xml
  def show
    @post444 = Post444.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post444 }
    end
  end

  # GET /post444s/new
  # GET /post444s/new.xml
  def new
    @post444 = Post444.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post444 }
    end
  end

  # GET /post444s/1/edit
  def edit
    @post444 = Post444.find(params[:id])
  end

  # POST /post444s
  # POST /post444s.xml
  def create
    @post444 = Post444.new(params[:post444])

    respond_to do |format|
      if @post444.save
        format.html { redirect_to(@post444, :notice => 'Post444 was successfully created.') }
        format.xml  { render :xml => @post444, :status => :created, :location => @post444 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post444.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post444s/1
  # PUT /post444s/1.xml
  def update
    @post444 = Post444.find(params[:id])

    respond_to do |format|
      if @post444.update_attributes(params[:post444])
        format.html { redirect_to(@post444, :notice => 'Post444 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post444.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post444s/1
  # DELETE /post444s/1.xml
  def destroy
    @post444 = Post444.find(params[:id])
    @post444.destroy

    respond_to do |format|
      format.html { redirect_to(post444s_url) }
      format.xml  { head :ok }
    end
  end
end
