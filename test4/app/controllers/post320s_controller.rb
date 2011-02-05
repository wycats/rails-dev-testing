class Post320sController < ApplicationController
  # GET /post320s
  # GET /post320s.xml
  def index
    @post320s = Post320.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post320s }
    end
  end

  # GET /post320s/1
  # GET /post320s/1.xml
  def show
    @post320 = Post320.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post320 }
    end
  end

  # GET /post320s/new
  # GET /post320s/new.xml
  def new
    @post320 = Post320.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post320 }
    end
  end

  # GET /post320s/1/edit
  def edit
    @post320 = Post320.find(params[:id])
  end

  # POST /post320s
  # POST /post320s.xml
  def create
    @post320 = Post320.new(params[:post320])

    respond_to do |format|
      if @post320.save
        format.html { redirect_to(@post320, :notice => 'Post320 was successfully created.') }
        format.xml  { render :xml => @post320, :status => :created, :location => @post320 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post320.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post320s/1
  # PUT /post320s/1.xml
  def update
    @post320 = Post320.find(params[:id])

    respond_to do |format|
      if @post320.update_attributes(params[:post320])
        format.html { redirect_to(@post320, :notice => 'Post320 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post320.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post320s/1
  # DELETE /post320s/1.xml
  def destroy
    @post320 = Post320.find(params[:id])
    @post320.destroy

    respond_to do |format|
      format.html { redirect_to(post320s_url) }
      format.xml  { head :ok }
    end
  end
end
