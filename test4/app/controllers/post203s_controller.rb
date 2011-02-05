class Post203sController < ApplicationController
  # GET /post203s
  # GET /post203s.xml
  def index
    @post203s = Post203.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post203s }
    end
  end

  # GET /post203s/1
  # GET /post203s/1.xml
  def show
    @post203 = Post203.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post203 }
    end
  end

  # GET /post203s/new
  # GET /post203s/new.xml
  def new
    @post203 = Post203.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post203 }
    end
  end

  # GET /post203s/1/edit
  def edit
    @post203 = Post203.find(params[:id])
  end

  # POST /post203s
  # POST /post203s.xml
  def create
    @post203 = Post203.new(params[:post203])

    respond_to do |format|
      if @post203.save
        format.html { redirect_to(@post203, :notice => 'Post203 was successfully created.') }
        format.xml  { render :xml => @post203, :status => :created, :location => @post203 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post203.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post203s/1
  # PUT /post203s/1.xml
  def update
    @post203 = Post203.find(params[:id])

    respond_to do |format|
      if @post203.update_attributes(params[:post203])
        format.html { redirect_to(@post203, :notice => 'Post203 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post203.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post203s/1
  # DELETE /post203s/1.xml
  def destroy
    @post203 = Post203.find(params[:id])
    @post203.destroy

    respond_to do |format|
      format.html { redirect_to(post203s_url) }
      format.xml  { head :ok }
    end
  end
end
