class Post63sController < ApplicationController
  # GET /post63s
  # GET /post63s.xml
  def index
    @post63s = Post63.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post63s }
    end
  end

  # GET /post63s/1
  # GET /post63s/1.xml
  def show
    @post63 = Post63.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post63 }
    end
  end

  # GET /post63s/new
  # GET /post63s/new.xml
  def new
    @post63 = Post63.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post63 }
    end
  end

  # GET /post63s/1/edit
  def edit
    @post63 = Post63.find(params[:id])
  end

  # POST /post63s
  # POST /post63s.xml
  def create
    @post63 = Post63.new(params[:post63])

    respond_to do |format|
      if @post63.save
        format.html { redirect_to(@post63, :notice => 'Post63 was successfully created.') }
        format.xml  { render :xml => @post63, :status => :created, :location => @post63 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post63.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post63s/1
  # PUT /post63s/1.xml
  def update
    @post63 = Post63.find(params[:id])

    respond_to do |format|
      if @post63.update_attributes(params[:post63])
        format.html { redirect_to(@post63, :notice => 'Post63 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post63.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post63s/1
  # DELETE /post63s/1.xml
  def destroy
    @post63 = Post63.find(params[:id])
    @post63.destroy

    respond_to do |format|
      format.html { redirect_to(post63s_url) }
      format.xml  { head :ok }
    end
  end
end
