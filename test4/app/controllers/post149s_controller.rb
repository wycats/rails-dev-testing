class Post149sController < ApplicationController
  # GET /post149s
  # GET /post149s.xml
  def index
    @post149s = Post149.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post149s }
    end
  end

  # GET /post149s/1
  # GET /post149s/1.xml
  def show
    @post149 = Post149.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post149 }
    end
  end

  # GET /post149s/new
  # GET /post149s/new.xml
  def new
    @post149 = Post149.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post149 }
    end
  end

  # GET /post149s/1/edit
  def edit
    @post149 = Post149.find(params[:id])
  end

  # POST /post149s
  # POST /post149s.xml
  def create
    @post149 = Post149.new(params[:post149])

    respond_to do |format|
      if @post149.save
        format.html { redirect_to(@post149, :notice => 'Post149 was successfully created.') }
        format.xml  { render :xml => @post149, :status => :created, :location => @post149 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post149.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post149s/1
  # PUT /post149s/1.xml
  def update
    @post149 = Post149.find(params[:id])

    respond_to do |format|
      if @post149.update_attributes(params[:post149])
        format.html { redirect_to(@post149, :notice => 'Post149 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post149.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post149s/1
  # DELETE /post149s/1.xml
  def destroy
    @post149 = Post149.find(params[:id])
    @post149.destroy

    respond_to do |format|
      format.html { redirect_to(post149s_url) }
      format.xml  { head :ok }
    end
  end
end
