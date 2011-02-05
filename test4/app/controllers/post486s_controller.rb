class Post486sController < ApplicationController
  # GET /post486s
  # GET /post486s.xml
  def index
    @post486s = Post486.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post486s }
    end
  end

  # GET /post486s/1
  # GET /post486s/1.xml
  def show
    @post486 = Post486.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post486 }
    end
  end

  # GET /post486s/new
  # GET /post486s/new.xml
  def new
    @post486 = Post486.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post486 }
    end
  end

  # GET /post486s/1/edit
  def edit
    @post486 = Post486.find(params[:id])
  end

  # POST /post486s
  # POST /post486s.xml
  def create
    @post486 = Post486.new(params[:post486])

    respond_to do |format|
      if @post486.save
        format.html { redirect_to(@post486, :notice => 'Post486 was successfully created.') }
        format.xml  { render :xml => @post486, :status => :created, :location => @post486 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post486.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post486s/1
  # PUT /post486s/1.xml
  def update
    @post486 = Post486.find(params[:id])

    respond_to do |format|
      if @post486.update_attributes(params[:post486])
        format.html { redirect_to(@post486, :notice => 'Post486 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post486.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post486s/1
  # DELETE /post486s/1.xml
  def destroy
    @post486 = Post486.find(params[:id])
    @post486.destroy

    respond_to do |format|
      format.html { redirect_to(post486s_url) }
      format.xml  { head :ok }
    end
  end
end
