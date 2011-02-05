class Post322sController < ApplicationController
  # GET /post322s
  # GET /post322s.xml
  def index
    @post322s = Post322.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post322s }
    end
  end

  # GET /post322s/1
  # GET /post322s/1.xml
  def show
    @post322 = Post322.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post322 }
    end
  end

  # GET /post322s/new
  # GET /post322s/new.xml
  def new
    @post322 = Post322.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post322 }
    end
  end

  # GET /post322s/1/edit
  def edit
    @post322 = Post322.find(params[:id])
  end

  # POST /post322s
  # POST /post322s.xml
  def create
    @post322 = Post322.new(params[:post322])

    respond_to do |format|
      if @post322.save
        format.html { redirect_to(@post322, :notice => 'Post322 was successfully created.') }
        format.xml  { render :xml => @post322, :status => :created, :location => @post322 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post322.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post322s/1
  # PUT /post322s/1.xml
  def update
    @post322 = Post322.find(params[:id])

    respond_to do |format|
      if @post322.update_attributes(params[:post322])
        format.html { redirect_to(@post322, :notice => 'Post322 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post322.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post322s/1
  # DELETE /post322s/1.xml
  def destroy
    @post322 = Post322.find(params[:id])
    @post322.destroy

    respond_to do |format|
      format.html { redirect_to(post322s_url) }
      format.xml  { head :ok }
    end
  end
end
