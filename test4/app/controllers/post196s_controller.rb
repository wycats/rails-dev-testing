class Post196sController < ApplicationController
  # GET /post196s
  # GET /post196s.xml
  def index
    @post196s = Post196.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post196s }
    end
  end

  # GET /post196s/1
  # GET /post196s/1.xml
  def show
    @post196 = Post196.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post196 }
    end
  end

  # GET /post196s/new
  # GET /post196s/new.xml
  def new
    @post196 = Post196.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post196 }
    end
  end

  # GET /post196s/1/edit
  def edit
    @post196 = Post196.find(params[:id])
  end

  # POST /post196s
  # POST /post196s.xml
  def create
    @post196 = Post196.new(params[:post196])

    respond_to do |format|
      if @post196.save
        format.html { redirect_to(@post196, :notice => 'Post196 was successfully created.') }
        format.xml  { render :xml => @post196, :status => :created, :location => @post196 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post196.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post196s/1
  # PUT /post196s/1.xml
  def update
    @post196 = Post196.find(params[:id])

    respond_to do |format|
      if @post196.update_attributes(params[:post196])
        format.html { redirect_to(@post196, :notice => 'Post196 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post196.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post196s/1
  # DELETE /post196s/1.xml
  def destroy
    @post196 = Post196.find(params[:id])
    @post196.destroy

    respond_to do |format|
      format.html { redirect_to(post196s_url) }
      format.xml  { head :ok }
    end
  end
end
