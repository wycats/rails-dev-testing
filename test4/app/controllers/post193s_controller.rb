class Post193sController < ApplicationController
  # GET /post193s
  # GET /post193s.xml
  def index
    @post193s = Post193.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post193s }
    end
  end

  # GET /post193s/1
  # GET /post193s/1.xml
  def show
    @post193 = Post193.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post193 }
    end
  end

  # GET /post193s/new
  # GET /post193s/new.xml
  def new
    @post193 = Post193.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post193 }
    end
  end

  # GET /post193s/1/edit
  def edit
    @post193 = Post193.find(params[:id])
  end

  # POST /post193s
  # POST /post193s.xml
  def create
    @post193 = Post193.new(params[:post193])

    respond_to do |format|
      if @post193.save
        format.html { redirect_to(@post193, :notice => 'Post193 was successfully created.') }
        format.xml  { render :xml => @post193, :status => :created, :location => @post193 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post193.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post193s/1
  # PUT /post193s/1.xml
  def update
    @post193 = Post193.find(params[:id])

    respond_to do |format|
      if @post193.update_attributes(params[:post193])
        format.html { redirect_to(@post193, :notice => 'Post193 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post193.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post193s/1
  # DELETE /post193s/1.xml
  def destroy
    @post193 = Post193.find(params[:id])
    @post193.destroy

    respond_to do |format|
      format.html { redirect_to(post193s_url) }
      format.xml  { head :ok }
    end
  end
end
