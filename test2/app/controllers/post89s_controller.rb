class Post89sController < ApplicationController
  # GET /post89s
  # GET /post89s.xml
  def index
    @post89s = Post89.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post89s }
    end
  end

  # GET /post89s/1
  # GET /post89s/1.xml
  def show
    @post89 = Post89.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post89 }
    end
  end

  # GET /post89s/new
  # GET /post89s/new.xml
  def new
    @post89 = Post89.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post89 }
    end
  end

  # GET /post89s/1/edit
  def edit
    @post89 = Post89.find(params[:id])
  end

  # POST /post89s
  # POST /post89s.xml
  def create
    @post89 = Post89.new(params[:post89])

    respond_to do |format|
      if @post89.save
        format.html { redirect_to(@post89, :notice => 'Post89 was successfully created.') }
        format.xml  { render :xml => @post89, :status => :created, :location => @post89 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post89.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post89s/1
  # PUT /post89s/1.xml
  def update
    @post89 = Post89.find(params[:id])

    respond_to do |format|
      if @post89.update_attributes(params[:post89])
        format.html { redirect_to(@post89, :notice => 'Post89 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post89.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post89s/1
  # DELETE /post89s/1.xml
  def destroy
    @post89 = Post89.find(params[:id])
    @post89.destroy

    respond_to do |format|
      format.html { redirect_to(post89s_url) }
      format.xml  { head :ok }
    end
  end
end
