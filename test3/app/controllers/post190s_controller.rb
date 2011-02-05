class Post190sController < ApplicationController
  # GET /post190s
  # GET /post190s.xml
  def index
    @post190s = Post190.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post190s }
    end
  end

  # GET /post190s/1
  # GET /post190s/1.xml
  def show
    @post190 = Post190.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post190 }
    end
  end

  # GET /post190s/new
  # GET /post190s/new.xml
  def new
    @post190 = Post190.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post190 }
    end
  end

  # GET /post190s/1/edit
  def edit
    @post190 = Post190.find(params[:id])
  end

  # POST /post190s
  # POST /post190s.xml
  def create
    @post190 = Post190.new(params[:post190])

    respond_to do |format|
      if @post190.save
        format.html { redirect_to(@post190, :notice => 'Post190 was successfully created.') }
        format.xml  { render :xml => @post190, :status => :created, :location => @post190 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post190.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post190s/1
  # PUT /post190s/1.xml
  def update
    @post190 = Post190.find(params[:id])

    respond_to do |format|
      if @post190.update_attributes(params[:post190])
        format.html { redirect_to(@post190, :notice => 'Post190 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post190.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post190s/1
  # DELETE /post190s/1.xml
  def destroy
    @post190 = Post190.find(params[:id])
    @post190.destroy

    respond_to do |format|
      format.html { redirect_to(post190s_url) }
      format.xml  { head :ok }
    end
  end
end
