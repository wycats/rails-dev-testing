class Post499sController < ApplicationController
  # GET /post499s
  # GET /post499s.xml
  def index
    @post499s = Post499.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post499s }
    end
  end

  # GET /post499s/1
  # GET /post499s/1.xml
  def show
    @post499 = Post499.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post499 }
    end
  end

  # GET /post499s/new
  # GET /post499s/new.xml
  def new
    @post499 = Post499.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post499 }
    end
  end

  # GET /post499s/1/edit
  def edit
    @post499 = Post499.find(params[:id])
  end

  # POST /post499s
  # POST /post499s.xml
  def create
    @post499 = Post499.new(params[:post499])

    respond_to do |format|
      if @post499.save
        format.html { redirect_to(@post499, :notice => 'Post499 was successfully created.') }
        format.xml  { render :xml => @post499, :status => :created, :location => @post499 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post499.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post499s/1
  # PUT /post499s/1.xml
  def update
    @post499 = Post499.find(params[:id])

    respond_to do |format|
      if @post499.update_attributes(params[:post499])
        format.html { redirect_to(@post499, :notice => 'Post499 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post499.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post499s/1
  # DELETE /post499s/1.xml
  def destroy
    @post499 = Post499.find(params[:id])
    @post499.destroy

    respond_to do |format|
      format.html { redirect_to(post499s_url) }
      format.xml  { head :ok }
    end
  end
end
