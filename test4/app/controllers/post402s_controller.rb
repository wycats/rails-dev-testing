class Post402sController < ApplicationController
  # GET /post402s
  # GET /post402s.xml
  def index
    @post402s = Post402.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post402s }
    end
  end

  # GET /post402s/1
  # GET /post402s/1.xml
  def show
    @post402 = Post402.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post402 }
    end
  end

  # GET /post402s/new
  # GET /post402s/new.xml
  def new
    @post402 = Post402.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post402 }
    end
  end

  # GET /post402s/1/edit
  def edit
    @post402 = Post402.find(params[:id])
  end

  # POST /post402s
  # POST /post402s.xml
  def create
    @post402 = Post402.new(params[:post402])

    respond_to do |format|
      if @post402.save
        format.html { redirect_to(@post402, :notice => 'Post402 was successfully created.') }
        format.xml  { render :xml => @post402, :status => :created, :location => @post402 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post402.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post402s/1
  # PUT /post402s/1.xml
  def update
    @post402 = Post402.find(params[:id])

    respond_to do |format|
      if @post402.update_attributes(params[:post402])
        format.html { redirect_to(@post402, :notice => 'Post402 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post402.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post402s/1
  # DELETE /post402s/1.xml
  def destroy
    @post402 = Post402.find(params[:id])
    @post402.destroy

    respond_to do |format|
      format.html { redirect_to(post402s_url) }
      format.xml  { head :ok }
    end
  end
end
