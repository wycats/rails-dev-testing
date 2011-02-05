class Post79sController < ApplicationController
  # GET /post79s
  # GET /post79s.xml
  def index
    @post79s = Post79.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post79s }
    end
  end

  # GET /post79s/1
  # GET /post79s/1.xml
  def show
    @post79 = Post79.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post79 }
    end
  end

  # GET /post79s/new
  # GET /post79s/new.xml
  def new
    @post79 = Post79.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post79 }
    end
  end

  # GET /post79s/1/edit
  def edit
    @post79 = Post79.find(params[:id])
  end

  # POST /post79s
  # POST /post79s.xml
  def create
    @post79 = Post79.new(params[:post79])

    respond_to do |format|
      if @post79.save
        format.html { redirect_to(@post79, :notice => 'Post79 was successfully created.') }
        format.xml  { render :xml => @post79, :status => :created, :location => @post79 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post79.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post79s/1
  # PUT /post79s/1.xml
  def update
    @post79 = Post79.find(params[:id])

    respond_to do |format|
      if @post79.update_attributes(params[:post79])
        format.html { redirect_to(@post79, :notice => 'Post79 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post79.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post79s/1
  # DELETE /post79s/1.xml
  def destroy
    @post79 = Post79.find(params[:id])
    @post79.destroy

    respond_to do |format|
      format.html { redirect_to(post79s_url) }
      format.xml  { head :ok }
    end
  end
end
