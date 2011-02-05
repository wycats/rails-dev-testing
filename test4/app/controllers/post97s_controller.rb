class Post97sController < ApplicationController
  # GET /post97s
  # GET /post97s.xml
  def index
    @post97s = Post97.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post97s }
    end
  end

  # GET /post97s/1
  # GET /post97s/1.xml
  def show
    @post97 = Post97.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post97 }
    end
  end

  # GET /post97s/new
  # GET /post97s/new.xml
  def new
    @post97 = Post97.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post97 }
    end
  end

  # GET /post97s/1/edit
  def edit
    @post97 = Post97.find(params[:id])
  end

  # POST /post97s
  # POST /post97s.xml
  def create
    @post97 = Post97.new(params[:post97])

    respond_to do |format|
      if @post97.save
        format.html { redirect_to(@post97, :notice => 'Post97 was successfully created.') }
        format.xml  { render :xml => @post97, :status => :created, :location => @post97 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post97.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post97s/1
  # PUT /post97s/1.xml
  def update
    @post97 = Post97.find(params[:id])

    respond_to do |format|
      if @post97.update_attributes(params[:post97])
        format.html { redirect_to(@post97, :notice => 'Post97 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post97.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post97s/1
  # DELETE /post97s/1.xml
  def destroy
    @post97 = Post97.find(params[:id])
    @post97.destroy

    respond_to do |format|
      format.html { redirect_to(post97s_url) }
      format.xml  { head :ok }
    end
  end
end
