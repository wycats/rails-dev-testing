class Post423sController < ApplicationController
  # GET /post423s
  # GET /post423s.xml
  def index
    @post423s = Post423.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post423s }
    end
  end

  # GET /post423s/1
  # GET /post423s/1.xml
  def show
    @post423 = Post423.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post423 }
    end
  end

  # GET /post423s/new
  # GET /post423s/new.xml
  def new
    @post423 = Post423.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post423 }
    end
  end

  # GET /post423s/1/edit
  def edit
    @post423 = Post423.find(params[:id])
  end

  # POST /post423s
  # POST /post423s.xml
  def create
    @post423 = Post423.new(params[:post423])

    respond_to do |format|
      if @post423.save
        format.html { redirect_to(@post423, :notice => 'Post423 was successfully created.') }
        format.xml  { render :xml => @post423, :status => :created, :location => @post423 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post423.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post423s/1
  # PUT /post423s/1.xml
  def update
    @post423 = Post423.find(params[:id])

    respond_to do |format|
      if @post423.update_attributes(params[:post423])
        format.html { redirect_to(@post423, :notice => 'Post423 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post423.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post423s/1
  # DELETE /post423s/1.xml
  def destroy
    @post423 = Post423.find(params[:id])
    @post423.destroy

    respond_to do |format|
      format.html { redirect_to(post423s_url) }
      format.xml  { head :ok }
    end
  end
end
