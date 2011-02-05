class Post126sController < ApplicationController
  # GET /post126s
  # GET /post126s.xml
  def index
    @post126s = Post126.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post126s }
    end
  end

  # GET /post126s/1
  # GET /post126s/1.xml
  def show
    @post126 = Post126.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post126 }
    end
  end

  # GET /post126s/new
  # GET /post126s/new.xml
  def new
    @post126 = Post126.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post126 }
    end
  end

  # GET /post126s/1/edit
  def edit
    @post126 = Post126.find(params[:id])
  end

  # POST /post126s
  # POST /post126s.xml
  def create
    @post126 = Post126.new(params[:post126])

    respond_to do |format|
      if @post126.save
        format.html { redirect_to(@post126, :notice => 'Post126 was successfully created.') }
        format.xml  { render :xml => @post126, :status => :created, :location => @post126 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post126.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post126s/1
  # PUT /post126s/1.xml
  def update
    @post126 = Post126.find(params[:id])

    respond_to do |format|
      if @post126.update_attributes(params[:post126])
        format.html { redirect_to(@post126, :notice => 'Post126 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post126.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post126s/1
  # DELETE /post126s/1.xml
  def destroy
    @post126 = Post126.find(params[:id])
    @post126.destroy

    respond_to do |format|
      format.html { redirect_to(post126s_url) }
      format.xml  { head :ok }
    end
  end
end
