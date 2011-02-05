class Post99sController < ApplicationController
  # GET /post99s
  # GET /post99s.xml
  def index
    @post99s = Post99.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post99s }
    end
  end

  # GET /post99s/1
  # GET /post99s/1.xml
  def show
    @post99 = Post99.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post99 }
    end
  end

  # GET /post99s/new
  # GET /post99s/new.xml
  def new
    @post99 = Post99.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post99 }
    end
  end

  # GET /post99s/1/edit
  def edit
    @post99 = Post99.find(params[:id])
  end

  # POST /post99s
  # POST /post99s.xml
  def create
    @post99 = Post99.new(params[:post99])

    respond_to do |format|
      if @post99.save
        format.html { redirect_to(@post99, :notice => 'Post99 was successfully created.') }
        format.xml  { render :xml => @post99, :status => :created, :location => @post99 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post99.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post99s/1
  # PUT /post99s/1.xml
  def update
    @post99 = Post99.find(params[:id])

    respond_to do |format|
      if @post99.update_attributes(params[:post99])
        format.html { redirect_to(@post99, :notice => 'Post99 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post99.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post99s/1
  # DELETE /post99s/1.xml
  def destroy
    @post99 = Post99.find(params[:id])
    @post99.destroy

    respond_to do |format|
      format.html { redirect_to(post99s_url) }
      format.xml  { head :ok }
    end
  end
end
