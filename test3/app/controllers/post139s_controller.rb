class Post139sController < ApplicationController
  # GET /post139s
  # GET /post139s.xml
  def index
    @post139s = Post139.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post139s }
    end
  end

  # GET /post139s/1
  # GET /post139s/1.xml
  def show
    @post139 = Post139.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post139 }
    end
  end

  # GET /post139s/new
  # GET /post139s/new.xml
  def new
    @post139 = Post139.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post139 }
    end
  end

  # GET /post139s/1/edit
  def edit
    @post139 = Post139.find(params[:id])
  end

  # POST /post139s
  # POST /post139s.xml
  def create
    @post139 = Post139.new(params[:post139])

    respond_to do |format|
      if @post139.save
        format.html { redirect_to(@post139, :notice => 'Post139 was successfully created.') }
        format.xml  { render :xml => @post139, :status => :created, :location => @post139 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post139.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post139s/1
  # PUT /post139s/1.xml
  def update
    @post139 = Post139.find(params[:id])

    respond_to do |format|
      if @post139.update_attributes(params[:post139])
        format.html { redirect_to(@post139, :notice => 'Post139 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post139.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post139s/1
  # DELETE /post139s/1.xml
  def destroy
    @post139 = Post139.find(params[:id])
    @post139.destroy

    respond_to do |format|
      format.html { redirect_to(post139s_url) }
      format.xml  { head :ok }
    end
  end
end
