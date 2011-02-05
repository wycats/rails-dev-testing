class Post58sController < ApplicationController
  # GET /post58s
  # GET /post58s.xml
  def index
    @post58s = Post58.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post58s }
    end
  end

  # GET /post58s/1
  # GET /post58s/1.xml
  def show
    @post58 = Post58.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post58 }
    end
  end

  # GET /post58s/new
  # GET /post58s/new.xml
  def new
    @post58 = Post58.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post58 }
    end
  end

  # GET /post58s/1/edit
  def edit
    @post58 = Post58.find(params[:id])
  end

  # POST /post58s
  # POST /post58s.xml
  def create
    @post58 = Post58.new(params[:post58])

    respond_to do |format|
      if @post58.save
        format.html { redirect_to(@post58, :notice => 'Post58 was successfully created.') }
        format.xml  { render :xml => @post58, :status => :created, :location => @post58 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post58.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post58s/1
  # PUT /post58s/1.xml
  def update
    @post58 = Post58.find(params[:id])

    respond_to do |format|
      if @post58.update_attributes(params[:post58])
        format.html { redirect_to(@post58, :notice => 'Post58 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post58.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post58s/1
  # DELETE /post58s/1.xml
  def destroy
    @post58 = Post58.find(params[:id])
    @post58.destroy

    respond_to do |format|
      format.html { redirect_to(post58s_url) }
      format.xml  { head :ok }
    end
  end
end
