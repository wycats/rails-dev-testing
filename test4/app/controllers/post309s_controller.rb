class Post309sController < ApplicationController
  # GET /post309s
  # GET /post309s.xml
  def index
    @post309s = Post309.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post309s }
    end
  end

  # GET /post309s/1
  # GET /post309s/1.xml
  def show
    @post309 = Post309.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post309 }
    end
  end

  # GET /post309s/new
  # GET /post309s/new.xml
  def new
    @post309 = Post309.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post309 }
    end
  end

  # GET /post309s/1/edit
  def edit
    @post309 = Post309.find(params[:id])
  end

  # POST /post309s
  # POST /post309s.xml
  def create
    @post309 = Post309.new(params[:post309])

    respond_to do |format|
      if @post309.save
        format.html { redirect_to(@post309, :notice => 'Post309 was successfully created.') }
        format.xml  { render :xml => @post309, :status => :created, :location => @post309 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post309.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post309s/1
  # PUT /post309s/1.xml
  def update
    @post309 = Post309.find(params[:id])

    respond_to do |format|
      if @post309.update_attributes(params[:post309])
        format.html { redirect_to(@post309, :notice => 'Post309 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post309.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post309s/1
  # DELETE /post309s/1.xml
  def destroy
    @post309 = Post309.find(params[:id])
    @post309.destroy

    respond_to do |format|
      format.html { redirect_to(post309s_url) }
      format.xml  { head :ok }
    end
  end
end
