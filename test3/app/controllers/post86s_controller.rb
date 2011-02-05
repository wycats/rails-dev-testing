class Post86sController < ApplicationController
  # GET /post86s
  # GET /post86s.xml
  def index
    @post86s = Post86.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post86s }
    end
  end

  # GET /post86s/1
  # GET /post86s/1.xml
  def show
    @post86 = Post86.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post86 }
    end
  end

  # GET /post86s/new
  # GET /post86s/new.xml
  def new
    @post86 = Post86.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post86 }
    end
  end

  # GET /post86s/1/edit
  def edit
    @post86 = Post86.find(params[:id])
  end

  # POST /post86s
  # POST /post86s.xml
  def create
    @post86 = Post86.new(params[:post86])

    respond_to do |format|
      if @post86.save
        format.html { redirect_to(@post86, :notice => 'Post86 was successfully created.') }
        format.xml  { render :xml => @post86, :status => :created, :location => @post86 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post86.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post86s/1
  # PUT /post86s/1.xml
  def update
    @post86 = Post86.find(params[:id])

    respond_to do |format|
      if @post86.update_attributes(params[:post86])
        format.html { redirect_to(@post86, :notice => 'Post86 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post86.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post86s/1
  # DELETE /post86s/1.xml
  def destroy
    @post86 = Post86.find(params[:id])
    @post86.destroy

    respond_to do |format|
      format.html { redirect_to(post86s_url) }
      format.xml  { head :ok }
    end
  end
end
