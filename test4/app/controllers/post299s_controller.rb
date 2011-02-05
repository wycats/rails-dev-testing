class Post299sController < ApplicationController
  # GET /post299s
  # GET /post299s.xml
  def index
    @post299s = Post299.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post299s }
    end
  end

  # GET /post299s/1
  # GET /post299s/1.xml
  def show
    @post299 = Post299.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post299 }
    end
  end

  # GET /post299s/new
  # GET /post299s/new.xml
  def new
    @post299 = Post299.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post299 }
    end
  end

  # GET /post299s/1/edit
  def edit
    @post299 = Post299.find(params[:id])
  end

  # POST /post299s
  # POST /post299s.xml
  def create
    @post299 = Post299.new(params[:post299])

    respond_to do |format|
      if @post299.save
        format.html { redirect_to(@post299, :notice => 'Post299 was successfully created.') }
        format.xml  { render :xml => @post299, :status => :created, :location => @post299 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post299.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post299s/1
  # PUT /post299s/1.xml
  def update
    @post299 = Post299.find(params[:id])

    respond_to do |format|
      if @post299.update_attributes(params[:post299])
        format.html { redirect_to(@post299, :notice => 'Post299 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post299.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post299s/1
  # DELETE /post299s/1.xml
  def destroy
    @post299 = Post299.find(params[:id])
    @post299.destroy

    respond_to do |format|
      format.html { redirect_to(post299s_url) }
      format.xml  { head :ok }
    end
  end
end
