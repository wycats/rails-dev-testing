class Post281sController < ApplicationController
  # GET /post281s
  # GET /post281s.xml
  def index
    @post281s = Post281.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post281s }
    end
  end

  # GET /post281s/1
  # GET /post281s/1.xml
  def show
    @post281 = Post281.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post281 }
    end
  end

  # GET /post281s/new
  # GET /post281s/new.xml
  def new
    @post281 = Post281.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post281 }
    end
  end

  # GET /post281s/1/edit
  def edit
    @post281 = Post281.find(params[:id])
  end

  # POST /post281s
  # POST /post281s.xml
  def create
    @post281 = Post281.new(params[:post281])

    respond_to do |format|
      if @post281.save
        format.html { redirect_to(@post281, :notice => 'Post281 was successfully created.') }
        format.xml  { render :xml => @post281, :status => :created, :location => @post281 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post281.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post281s/1
  # PUT /post281s/1.xml
  def update
    @post281 = Post281.find(params[:id])

    respond_to do |format|
      if @post281.update_attributes(params[:post281])
        format.html { redirect_to(@post281, :notice => 'Post281 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post281.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post281s/1
  # DELETE /post281s/1.xml
  def destroy
    @post281 = Post281.find(params[:id])
    @post281.destroy

    respond_to do |format|
      format.html { redirect_to(post281s_url) }
      format.xml  { head :ok }
    end
  end
end
