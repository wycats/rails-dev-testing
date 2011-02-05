class Post102sController < ApplicationController
  # GET /post102s
  # GET /post102s.xml
  def index
    @post102s = Post102.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post102s }
    end
  end

  # GET /post102s/1
  # GET /post102s/1.xml
  def show
    @post102 = Post102.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post102 }
    end
  end

  # GET /post102s/new
  # GET /post102s/new.xml
  def new
    @post102 = Post102.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post102 }
    end
  end

  # GET /post102s/1/edit
  def edit
    @post102 = Post102.find(params[:id])
  end

  # POST /post102s
  # POST /post102s.xml
  def create
    @post102 = Post102.new(params[:post102])

    respond_to do |format|
      if @post102.save
        format.html { redirect_to(@post102, :notice => 'Post102 was successfully created.') }
        format.xml  { render :xml => @post102, :status => :created, :location => @post102 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post102.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post102s/1
  # PUT /post102s/1.xml
  def update
    @post102 = Post102.find(params[:id])

    respond_to do |format|
      if @post102.update_attributes(params[:post102])
        format.html { redirect_to(@post102, :notice => 'Post102 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post102.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post102s/1
  # DELETE /post102s/1.xml
  def destroy
    @post102 = Post102.find(params[:id])
    @post102.destroy

    respond_to do |format|
      format.html { redirect_to(post102s_url) }
      format.xml  { head :ok }
    end
  end
end
