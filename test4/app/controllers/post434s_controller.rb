class Post434sController < ApplicationController
  # GET /post434s
  # GET /post434s.xml
  def index
    @post434s = Post434.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post434s }
    end
  end

  # GET /post434s/1
  # GET /post434s/1.xml
  def show
    @post434 = Post434.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post434 }
    end
  end

  # GET /post434s/new
  # GET /post434s/new.xml
  def new
    @post434 = Post434.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post434 }
    end
  end

  # GET /post434s/1/edit
  def edit
    @post434 = Post434.find(params[:id])
  end

  # POST /post434s
  # POST /post434s.xml
  def create
    @post434 = Post434.new(params[:post434])

    respond_to do |format|
      if @post434.save
        format.html { redirect_to(@post434, :notice => 'Post434 was successfully created.') }
        format.xml  { render :xml => @post434, :status => :created, :location => @post434 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post434.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post434s/1
  # PUT /post434s/1.xml
  def update
    @post434 = Post434.find(params[:id])

    respond_to do |format|
      if @post434.update_attributes(params[:post434])
        format.html { redirect_to(@post434, :notice => 'Post434 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post434.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post434s/1
  # DELETE /post434s/1.xml
  def destroy
    @post434 = Post434.find(params[:id])
    @post434.destroy

    respond_to do |format|
      format.html { redirect_to(post434s_url) }
      format.xml  { head :ok }
    end
  end
end
