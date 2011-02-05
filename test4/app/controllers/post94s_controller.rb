class Post94sController < ApplicationController
  # GET /post94s
  # GET /post94s.xml
  def index
    @post94s = Post94.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post94s }
    end
  end

  # GET /post94s/1
  # GET /post94s/1.xml
  def show
    @post94 = Post94.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post94 }
    end
  end

  # GET /post94s/new
  # GET /post94s/new.xml
  def new
    @post94 = Post94.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post94 }
    end
  end

  # GET /post94s/1/edit
  def edit
    @post94 = Post94.find(params[:id])
  end

  # POST /post94s
  # POST /post94s.xml
  def create
    @post94 = Post94.new(params[:post94])

    respond_to do |format|
      if @post94.save
        format.html { redirect_to(@post94, :notice => 'Post94 was successfully created.') }
        format.xml  { render :xml => @post94, :status => :created, :location => @post94 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post94.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post94s/1
  # PUT /post94s/1.xml
  def update
    @post94 = Post94.find(params[:id])

    respond_to do |format|
      if @post94.update_attributes(params[:post94])
        format.html { redirect_to(@post94, :notice => 'Post94 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post94.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post94s/1
  # DELETE /post94s/1.xml
  def destroy
    @post94 = Post94.find(params[:id])
    @post94.destroy

    respond_to do |format|
      format.html { redirect_to(post94s_url) }
      format.xml  { head :ok }
    end
  end
end
