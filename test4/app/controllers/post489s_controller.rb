class Post489sController < ApplicationController
  # GET /post489s
  # GET /post489s.xml
  def index
    @post489s = Post489.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post489s }
    end
  end

  # GET /post489s/1
  # GET /post489s/1.xml
  def show
    @post489 = Post489.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post489 }
    end
  end

  # GET /post489s/new
  # GET /post489s/new.xml
  def new
    @post489 = Post489.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post489 }
    end
  end

  # GET /post489s/1/edit
  def edit
    @post489 = Post489.find(params[:id])
  end

  # POST /post489s
  # POST /post489s.xml
  def create
    @post489 = Post489.new(params[:post489])

    respond_to do |format|
      if @post489.save
        format.html { redirect_to(@post489, :notice => 'Post489 was successfully created.') }
        format.xml  { render :xml => @post489, :status => :created, :location => @post489 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post489.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post489s/1
  # PUT /post489s/1.xml
  def update
    @post489 = Post489.find(params[:id])

    respond_to do |format|
      if @post489.update_attributes(params[:post489])
        format.html { redirect_to(@post489, :notice => 'Post489 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post489.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post489s/1
  # DELETE /post489s/1.xml
  def destroy
    @post489 = Post489.find(params[:id])
    @post489.destroy

    respond_to do |format|
      format.html { redirect_to(post489s_url) }
      format.xml  { head :ok }
    end
  end
end
