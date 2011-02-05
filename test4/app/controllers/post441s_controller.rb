class Post441sController < ApplicationController
  # GET /post441s
  # GET /post441s.xml
  def index
    @post441s = Post441.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post441s }
    end
  end

  # GET /post441s/1
  # GET /post441s/1.xml
  def show
    @post441 = Post441.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post441 }
    end
  end

  # GET /post441s/new
  # GET /post441s/new.xml
  def new
    @post441 = Post441.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post441 }
    end
  end

  # GET /post441s/1/edit
  def edit
    @post441 = Post441.find(params[:id])
  end

  # POST /post441s
  # POST /post441s.xml
  def create
    @post441 = Post441.new(params[:post441])

    respond_to do |format|
      if @post441.save
        format.html { redirect_to(@post441, :notice => 'Post441 was successfully created.') }
        format.xml  { render :xml => @post441, :status => :created, :location => @post441 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post441.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post441s/1
  # PUT /post441s/1.xml
  def update
    @post441 = Post441.find(params[:id])

    respond_to do |format|
      if @post441.update_attributes(params[:post441])
        format.html { redirect_to(@post441, :notice => 'Post441 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post441.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post441s/1
  # DELETE /post441s/1.xml
  def destroy
    @post441 = Post441.find(params[:id])
    @post441.destroy

    respond_to do |format|
      format.html { redirect_to(post441s_url) }
      format.xml  { head :ok }
    end
  end
end
