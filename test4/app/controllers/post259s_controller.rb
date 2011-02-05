class Post259sController < ApplicationController
  # GET /post259s
  # GET /post259s.xml
  def index
    @post259s = Post259.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post259s }
    end
  end

  # GET /post259s/1
  # GET /post259s/1.xml
  def show
    @post259 = Post259.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post259 }
    end
  end

  # GET /post259s/new
  # GET /post259s/new.xml
  def new
    @post259 = Post259.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post259 }
    end
  end

  # GET /post259s/1/edit
  def edit
    @post259 = Post259.find(params[:id])
  end

  # POST /post259s
  # POST /post259s.xml
  def create
    @post259 = Post259.new(params[:post259])

    respond_to do |format|
      if @post259.save
        format.html { redirect_to(@post259, :notice => 'Post259 was successfully created.') }
        format.xml  { render :xml => @post259, :status => :created, :location => @post259 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post259.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post259s/1
  # PUT /post259s/1.xml
  def update
    @post259 = Post259.find(params[:id])

    respond_to do |format|
      if @post259.update_attributes(params[:post259])
        format.html { redirect_to(@post259, :notice => 'Post259 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post259.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post259s/1
  # DELETE /post259s/1.xml
  def destroy
    @post259 = Post259.find(params[:id])
    @post259.destroy

    respond_to do |format|
      format.html { redirect_to(post259s_url) }
      format.xml  { head :ok }
    end
  end
end
