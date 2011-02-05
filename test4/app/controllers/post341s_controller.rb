class Post341sController < ApplicationController
  # GET /post341s
  # GET /post341s.xml
  def index
    @post341s = Post341.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post341s }
    end
  end

  # GET /post341s/1
  # GET /post341s/1.xml
  def show
    @post341 = Post341.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post341 }
    end
  end

  # GET /post341s/new
  # GET /post341s/new.xml
  def new
    @post341 = Post341.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post341 }
    end
  end

  # GET /post341s/1/edit
  def edit
    @post341 = Post341.find(params[:id])
  end

  # POST /post341s
  # POST /post341s.xml
  def create
    @post341 = Post341.new(params[:post341])

    respond_to do |format|
      if @post341.save
        format.html { redirect_to(@post341, :notice => 'Post341 was successfully created.') }
        format.xml  { render :xml => @post341, :status => :created, :location => @post341 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post341.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post341s/1
  # PUT /post341s/1.xml
  def update
    @post341 = Post341.find(params[:id])

    respond_to do |format|
      if @post341.update_attributes(params[:post341])
        format.html { redirect_to(@post341, :notice => 'Post341 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post341.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post341s/1
  # DELETE /post341s/1.xml
  def destroy
    @post341 = Post341.find(params[:id])
    @post341.destroy

    respond_to do |format|
      format.html { redirect_to(post341s_url) }
      format.xml  { head :ok }
    end
  end
end
