class Post44sController < ApplicationController
  # GET /post44s
  # GET /post44s.xml
  def index
    @post44s = Post44.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post44s }
    end
  end

  # GET /post44s/1
  # GET /post44s/1.xml
  def show
    @post44 = Post44.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post44 }
    end
  end

  # GET /post44s/new
  # GET /post44s/new.xml
  def new
    @post44 = Post44.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post44 }
    end
  end

  # GET /post44s/1/edit
  def edit
    @post44 = Post44.find(params[:id])
  end

  # POST /post44s
  # POST /post44s.xml
  def create
    @post44 = Post44.new(params[:post44])

    respond_to do |format|
      if @post44.save
        format.html { redirect_to(@post44, :notice => 'Post44 was successfully created.') }
        format.xml  { render :xml => @post44, :status => :created, :location => @post44 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post44.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post44s/1
  # PUT /post44s/1.xml
  def update
    @post44 = Post44.find(params[:id])

    respond_to do |format|
      if @post44.update_attributes(params[:post44])
        format.html { redirect_to(@post44, :notice => 'Post44 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post44.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post44s/1
  # DELETE /post44s/1.xml
  def destroy
    @post44 = Post44.find(params[:id])
    @post44.destroy

    respond_to do |format|
      format.html { redirect_to(post44s_url) }
      format.xml  { head :ok }
    end
  end
end
