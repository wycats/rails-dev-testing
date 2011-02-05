class Post35sController < ApplicationController
  # GET /post35s
  # GET /post35s.xml
  def index
    @post35s = Post35.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post35s }
    end
  end

  # GET /post35s/1
  # GET /post35s/1.xml
  def show
    @post35 = Post35.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post35 }
    end
  end

  # GET /post35s/new
  # GET /post35s/new.xml
  def new
    @post35 = Post35.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post35 }
    end
  end

  # GET /post35s/1/edit
  def edit
    @post35 = Post35.find(params[:id])
  end

  # POST /post35s
  # POST /post35s.xml
  def create
    @post35 = Post35.new(params[:post35])

    respond_to do |format|
      if @post35.save
        format.html { redirect_to(@post35, :notice => 'Post35 was successfully created.') }
        format.xml  { render :xml => @post35, :status => :created, :location => @post35 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post35.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post35s/1
  # PUT /post35s/1.xml
  def update
    @post35 = Post35.find(params[:id])

    respond_to do |format|
      if @post35.update_attributes(params[:post35])
        format.html { redirect_to(@post35, :notice => 'Post35 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post35.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post35s/1
  # DELETE /post35s/1.xml
  def destroy
    @post35 = Post35.find(params[:id])
    @post35.destroy

    respond_to do |format|
      format.html { redirect_to(post35s_url) }
      format.xml  { head :ok }
    end
  end
end
