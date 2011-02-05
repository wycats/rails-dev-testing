class Post453sController < ApplicationController
  # GET /post453s
  # GET /post453s.xml
  def index
    @post453s = Post453.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post453s }
    end
  end

  # GET /post453s/1
  # GET /post453s/1.xml
  def show
    @post453 = Post453.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post453 }
    end
  end

  # GET /post453s/new
  # GET /post453s/new.xml
  def new
    @post453 = Post453.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post453 }
    end
  end

  # GET /post453s/1/edit
  def edit
    @post453 = Post453.find(params[:id])
  end

  # POST /post453s
  # POST /post453s.xml
  def create
    @post453 = Post453.new(params[:post453])

    respond_to do |format|
      if @post453.save
        format.html { redirect_to(@post453, :notice => 'Post453 was successfully created.') }
        format.xml  { render :xml => @post453, :status => :created, :location => @post453 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post453.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post453s/1
  # PUT /post453s/1.xml
  def update
    @post453 = Post453.find(params[:id])

    respond_to do |format|
      if @post453.update_attributes(params[:post453])
        format.html { redirect_to(@post453, :notice => 'Post453 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post453.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post453s/1
  # DELETE /post453s/1.xml
  def destroy
    @post453 = Post453.find(params[:id])
    @post453.destroy

    respond_to do |format|
      format.html { redirect_to(post453s_url) }
      format.xml  { head :ok }
    end
  end
end
