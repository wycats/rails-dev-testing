class Post26sController < ApplicationController
  # GET /post26s
  # GET /post26s.xml
  def index
    @post26s = Post26.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post26s }
    end
  end

  # GET /post26s/1
  # GET /post26s/1.xml
  def show
    @post26 = Post26.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post26 }
    end
  end

  # GET /post26s/new
  # GET /post26s/new.xml
  def new
    @post26 = Post26.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post26 }
    end
  end

  # GET /post26s/1/edit
  def edit
    @post26 = Post26.find(params[:id])
  end

  # POST /post26s
  # POST /post26s.xml
  def create
    @post26 = Post26.new(params[:post26])

    respond_to do |format|
      if @post26.save
        format.html { redirect_to(@post26, :notice => 'Post26 was successfully created.') }
        format.xml  { render :xml => @post26, :status => :created, :location => @post26 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post26.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post26s/1
  # PUT /post26s/1.xml
  def update
    @post26 = Post26.find(params[:id])

    respond_to do |format|
      if @post26.update_attributes(params[:post26])
        format.html { redirect_to(@post26, :notice => 'Post26 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post26.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post26s/1
  # DELETE /post26s/1.xml
  def destroy
    @post26 = Post26.find(params[:id])
    @post26.destroy

    respond_to do |format|
      format.html { redirect_to(post26s_url) }
      format.xml  { head :ok }
    end
  end
end
