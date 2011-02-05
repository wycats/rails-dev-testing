class Post262sController < ApplicationController
  # GET /post262s
  # GET /post262s.xml
  def index
    @post262s = Post262.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post262s }
    end
  end

  # GET /post262s/1
  # GET /post262s/1.xml
  def show
    @post262 = Post262.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post262 }
    end
  end

  # GET /post262s/new
  # GET /post262s/new.xml
  def new
    @post262 = Post262.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post262 }
    end
  end

  # GET /post262s/1/edit
  def edit
    @post262 = Post262.find(params[:id])
  end

  # POST /post262s
  # POST /post262s.xml
  def create
    @post262 = Post262.new(params[:post262])

    respond_to do |format|
      if @post262.save
        format.html { redirect_to(@post262, :notice => 'Post262 was successfully created.') }
        format.xml  { render :xml => @post262, :status => :created, :location => @post262 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post262.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post262s/1
  # PUT /post262s/1.xml
  def update
    @post262 = Post262.find(params[:id])

    respond_to do |format|
      if @post262.update_attributes(params[:post262])
        format.html { redirect_to(@post262, :notice => 'Post262 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post262.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post262s/1
  # DELETE /post262s/1.xml
  def destroy
    @post262 = Post262.find(params[:id])
    @post262.destroy

    respond_to do |format|
      format.html { redirect_to(post262s_url) }
      format.xml  { head :ok }
    end
  end
end
