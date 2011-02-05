class Post133sController < ApplicationController
  # GET /post133s
  # GET /post133s.xml
  def index
    @post133s = Post133.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post133s }
    end
  end

  # GET /post133s/1
  # GET /post133s/1.xml
  def show
    @post133 = Post133.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post133 }
    end
  end

  # GET /post133s/new
  # GET /post133s/new.xml
  def new
    @post133 = Post133.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post133 }
    end
  end

  # GET /post133s/1/edit
  def edit
    @post133 = Post133.find(params[:id])
  end

  # POST /post133s
  # POST /post133s.xml
  def create
    @post133 = Post133.new(params[:post133])

    respond_to do |format|
      if @post133.save
        format.html { redirect_to(@post133, :notice => 'Post133 was successfully created.') }
        format.xml  { render :xml => @post133, :status => :created, :location => @post133 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post133.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post133s/1
  # PUT /post133s/1.xml
  def update
    @post133 = Post133.find(params[:id])

    respond_to do |format|
      if @post133.update_attributes(params[:post133])
        format.html { redirect_to(@post133, :notice => 'Post133 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post133.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post133s/1
  # DELETE /post133s/1.xml
  def destroy
    @post133 = Post133.find(params[:id])
    @post133.destroy

    respond_to do |format|
      format.html { redirect_to(post133s_url) }
      format.xml  { head :ok }
    end
  end
end
