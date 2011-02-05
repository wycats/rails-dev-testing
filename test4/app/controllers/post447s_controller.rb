class Post447sController < ApplicationController
  # GET /post447s
  # GET /post447s.xml
  def index
    @post447s = Post447.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post447s }
    end
  end

  # GET /post447s/1
  # GET /post447s/1.xml
  def show
    @post447 = Post447.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post447 }
    end
  end

  # GET /post447s/new
  # GET /post447s/new.xml
  def new
    @post447 = Post447.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post447 }
    end
  end

  # GET /post447s/1/edit
  def edit
    @post447 = Post447.find(params[:id])
  end

  # POST /post447s
  # POST /post447s.xml
  def create
    @post447 = Post447.new(params[:post447])

    respond_to do |format|
      if @post447.save
        format.html { redirect_to(@post447, :notice => 'Post447 was successfully created.') }
        format.xml  { render :xml => @post447, :status => :created, :location => @post447 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post447.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post447s/1
  # PUT /post447s/1.xml
  def update
    @post447 = Post447.find(params[:id])

    respond_to do |format|
      if @post447.update_attributes(params[:post447])
        format.html { redirect_to(@post447, :notice => 'Post447 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post447.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post447s/1
  # DELETE /post447s/1.xml
  def destroy
    @post447 = Post447.find(params[:id])
    @post447.destroy

    respond_to do |format|
      format.html { redirect_to(post447s_url) }
      format.xml  { head :ok }
    end
  end
end
