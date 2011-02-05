class Post69sController < ApplicationController
  # GET /post69s
  # GET /post69s.xml
  def index
    @post69s = Post69.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post69s }
    end
  end

  # GET /post69s/1
  # GET /post69s/1.xml
  def show
    @post69 = Post69.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post69 }
    end
  end

  # GET /post69s/new
  # GET /post69s/new.xml
  def new
    @post69 = Post69.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post69 }
    end
  end

  # GET /post69s/1/edit
  def edit
    @post69 = Post69.find(params[:id])
  end

  # POST /post69s
  # POST /post69s.xml
  def create
    @post69 = Post69.new(params[:post69])

    respond_to do |format|
      if @post69.save
        format.html { redirect_to(@post69, :notice => 'Post69 was successfully created.') }
        format.xml  { render :xml => @post69, :status => :created, :location => @post69 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post69.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post69s/1
  # PUT /post69s/1.xml
  def update
    @post69 = Post69.find(params[:id])

    respond_to do |format|
      if @post69.update_attributes(params[:post69])
        format.html { redirect_to(@post69, :notice => 'Post69 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post69.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post69s/1
  # DELETE /post69s/1.xml
  def destroy
    @post69 = Post69.find(params[:id])
    @post69.destroy

    respond_to do |format|
      format.html { redirect_to(post69s_url) }
      format.xml  { head :ok }
    end
  end
end
