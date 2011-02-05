class Post314sController < ApplicationController
  # GET /post314s
  # GET /post314s.xml
  def index
    @post314s = Post314.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post314s }
    end
  end

  # GET /post314s/1
  # GET /post314s/1.xml
  def show
    @post314 = Post314.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post314 }
    end
  end

  # GET /post314s/new
  # GET /post314s/new.xml
  def new
    @post314 = Post314.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post314 }
    end
  end

  # GET /post314s/1/edit
  def edit
    @post314 = Post314.find(params[:id])
  end

  # POST /post314s
  # POST /post314s.xml
  def create
    @post314 = Post314.new(params[:post314])

    respond_to do |format|
      if @post314.save
        format.html { redirect_to(@post314, :notice => 'Post314 was successfully created.') }
        format.xml  { render :xml => @post314, :status => :created, :location => @post314 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post314.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post314s/1
  # PUT /post314s/1.xml
  def update
    @post314 = Post314.find(params[:id])

    respond_to do |format|
      if @post314.update_attributes(params[:post314])
        format.html { redirect_to(@post314, :notice => 'Post314 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post314.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post314s/1
  # DELETE /post314s/1.xml
  def destroy
    @post314 = Post314.find(params[:id])
    @post314.destroy

    respond_to do |format|
      format.html { redirect_to(post314s_url) }
      format.xml  { head :ok }
    end
  end
end
