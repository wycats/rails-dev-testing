class Post221sController < ApplicationController
  # GET /post221s
  # GET /post221s.xml
  def index
    @post221s = Post221.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post221s }
    end
  end

  # GET /post221s/1
  # GET /post221s/1.xml
  def show
    @post221 = Post221.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post221 }
    end
  end

  # GET /post221s/new
  # GET /post221s/new.xml
  def new
    @post221 = Post221.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post221 }
    end
  end

  # GET /post221s/1/edit
  def edit
    @post221 = Post221.find(params[:id])
  end

  # POST /post221s
  # POST /post221s.xml
  def create
    @post221 = Post221.new(params[:post221])

    respond_to do |format|
      if @post221.save
        format.html { redirect_to(@post221, :notice => 'Post221 was successfully created.') }
        format.xml  { render :xml => @post221, :status => :created, :location => @post221 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post221.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post221s/1
  # PUT /post221s/1.xml
  def update
    @post221 = Post221.find(params[:id])

    respond_to do |format|
      if @post221.update_attributes(params[:post221])
        format.html { redirect_to(@post221, :notice => 'Post221 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post221.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post221s/1
  # DELETE /post221s/1.xml
  def destroy
    @post221 = Post221.find(params[:id])
    @post221.destroy

    respond_to do |format|
      format.html { redirect_to(post221s_url) }
      format.xml  { head :ok }
    end
  end
end
