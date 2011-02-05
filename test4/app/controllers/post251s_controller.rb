class Post251sController < ApplicationController
  # GET /post251s
  # GET /post251s.xml
  def index
    @post251s = Post251.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post251s }
    end
  end

  # GET /post251s/1
  # GET /post251s/1.xml
  def show
    @post251 = Post251.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post251 }
    end
  end

  # GET /post251s/new
  # GET /post251s/new.xml
  def new
    @post251 = Post251.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post251 }
    end
  end

  # GET /post251s/1/edit
  def edit
    @post251 = Post251.find(params[:id])
  end

  # POST /post251s
  # POST /post251s.xml
  def create
    @post251 = Post251.new(params[:post251])

    respond_to do |format|
      if @post251.save
        format.html { redirect_to(@post251, :notice => 'Post251 was successfully created.') }
        format.xml  { render :xml => @post251, :status => :created, :location => @post251 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post251.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post251s/1
  # PUT /post251s/1.xml
  def update
    @post251 = Post251.find(params[:id])

    respond_to do |format|
      if @post251.update_attributes(params[:post251])
        format.html { redirect_to(@post251, :notice => 'Post251 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post251.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post251s/1
  # DELETE /post251s/1.xml
  def destroy
    @post251 = Post251.find(params[:id])
    @post251.destroy

    respond_to do |format|
      format.html { redirect_to(post251s_url) }
      format.xml  { head :ok }
    end
  end
end
