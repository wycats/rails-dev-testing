class Post3sController < ApplicationController
  # GET /post3s
  # GET /post3s.xml
  def index
    @post3s = Post3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post3s }
    end
  end

  # GET /post3s/1
  # GET /post3s/1.xml
  def show
    @post3 = Post3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post3 }
    end
  end

  # GET /post3s/new
  # GET /post3s/new.xml
  def new
    @post3 = Post3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post3 }
    end
  end

  # GET /post3s/1/edit
  def edit
    @post3 = Post3.find(params[:id])
  end

  # POST /post3s
  # POST /post3s.xml
  def create
    @post3 = Post3.new(params[:post3])

    respond_to do |format|
      if @post3.save
        format.html { redirect_to(@post3, :notice => 'Post3 was successfully created.') }
        format.xml  { render :xml => @post3, :status => :created, :location => @post3 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post3s/1
  # PUT /post3s/1.xml
  def update
    @post3 = Post3.find(params[:id])

    respond_to do |format|
      if @post3.update_attributes(params[:post3])
        format.html { redirect_to(@post3, :notice => 'Post3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post3s/1
  # DELETE /post3s/1.xml
  def destroy
    @post3 = Post3.find(params[:id])
    @post3.destroy

    respond_to do |format|
      format.html { redirect_to(post3s_url) }
      format.xml  { head :ok }
    end
  end
end
