class Post332sController < ApplicationController
  # GET /post332s
  # GET /post332s.xml
  def index
    @post332s = Post332.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post332s }
    end
  end

  # GET /post332s/1
  # GET /post332s/1.xml
  def show
    @post332 = Post332.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post332 }
    end
  end

  # GET /post332s/new
  # GET /post332s/new.xml
  def new
    @post332 = Post332.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post332 }
    end
  end

  # GET /post332s/1/edit
  def edit
    @post332 = Post332.find(params[:id])
  end

  # POST /post332s
  # POST /post332s.xml
  def create
    @post332 = Post332.new(params[:post332])

    respond_to do |format|
      if @post332.save
        format.html { redirect_to(@post332, :notice => 'Post332 was successfully created.') }
        format.xml  { render :xml => @post332, :status => :created, :location => @post332 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post332.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post332s/1
  # PUT /post332s/1.xml
  def update
    @post332 = Post332.find(params[:id])

    respond_to do |format|
      if @post332.update_attributes(params[:post332])
        format.html { redirect_to(@post332, :notice => 'Post332 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post332.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post332s/1
  # DELETE /post332s/1.xml
  def destroy
    @post332 = Post332.find(params[:id])
    @post332.destroy

    respond_to do |format|
      format.html { redirect_to(post332s_url) }
      format.xml  { head :ok }
    end
  end
end
