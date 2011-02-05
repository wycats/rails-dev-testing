class Post269sController < ApplicationController
  # GET /post269s
  # GET /post269s.xml
  def index
    @post269s = Post269.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post269s }
    end
  end

  # GET /post269s/1
  # GET /post269s/1.xml
  def show
    @post269 = Post269.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post269 }
    end
  end

  # GET /post269s/new
  # GET /post269s/new.xml
  def new
    @post269 = Post269.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post269 }
    end
  end

  # GET /post269s/1/edit
  def edit
    @post269 = Post269.find(params[:id])
  end

  # POST /post269s
  # POST /post269s.xml
  def create
    @post269 = Post269.new(params[:post269])

    respond_to do |format|
      if @post269.save
        format.html { redirect_to(@post269, :notice => 'Post269 was successfully created.') }
        format.xml  { render :xml => @post269, :status => :created, :location => @post269 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post269.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post269s/1
  # PUT /post269s/1.xml
  def update
    @post269 = Post269.find(params[:id])

    respond_to do |format|
      if @post269.update_attributes(params[:post269])
        format.html { redirect_to(@post269, :notice => 'Post269 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post269.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post269s/1
  # DELETE /post269s/1.xml
  def destroy
    @post269 = Post269.find(params[:id])
    @post269.destroy

    respond_to do |format|
      format.html { redirect_to(post269s_url) }
      format.xml  { head :ok }
    end
  end
end
