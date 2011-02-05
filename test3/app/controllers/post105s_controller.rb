class Post105sController < ApplicationController
  # GET /post105s
  # GET /post105s.xml
  def index
    @post105s = Post105.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post105s }
    end
  end

  # GET /post105s/1
  # GET /post105s/1.xml
  def show
    @post105 = Post105.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post105 }
    end
  end

  # GET /post105s/new
  # GET /post105s/new.xml
  def new
    @post105 = Post105.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post105 }
    end
  end

  # GET /post105s/1/edit
  def edit
    @post105 = Post105.find(params[:id])
  end

  # POST /post105s
  # POST /post105s.xml
  def create
    @post105 = Post105.new(params[:post105])

    respond_to do |format|
      if @post105.save
        format.html { redirect_to(@post105, :notice => 'Post105 was successfully created.') }
        format.xml  { render :xml => @post105, :status => :created, :location => @post105 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post105.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post105s/1
  # PUT /post105s/1.xml
  def update
    @post105 = Post105.find(params[:id])

    respond_to do |format|
      if @post105.update_attributes(params[:post105])
        format.html { redirect_to(@post105, :notice => 'Post105 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post105.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post105s/1
  # DELETE /post105s/1.xml
  def destroy
    @post105 = Post105.find(params[:id])
    @post105.destroy

    respond_to do |format|
      format.html { redirect_to(post105s_url) }
      format.xml  { head :ok }
    end
  end
end
