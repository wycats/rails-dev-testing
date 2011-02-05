class Post451sController < ApplicationController
  # GET /post451s
  # GET /post451s.xml
  def index
    @post451s = Post451.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post451s }
    end
  end

  # GET /post451s/1
  # GET /post451s/1.xml
  def show
    @post451 = Post451.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post451 }
    end
  end

  # GET /post451s/new
  # GET /post451s/new.xml
  def new
    @post451 = Post451.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post451 }
    end
  end

  # GET /post451s/1/edit
  def edit
    @post451 = Post451.find(params[:id])
  end

  # POST /post451s
  # POST /post451s.xml
  def create
    @post451 = Post451.new(params[:post451])

    respond_to do |format|
      if @post451.save
        format.html { redirect_to(@post451, :notice => 'Post451 was successfully created.') }
        format.xml  { render :xml => @post451, :status => :created, :location => @post451 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post451.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post451s/1
  # PUT /post451s/1.xml
  def update
    @post451 = Post451.find(params[:id])

    respond_to do |format|
      if @post451.update_attributes(params[:post451])
        format.html { redirect_to(@post451, :notice => 'Post451 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post451.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post451s/1
  # DELETE /post451s/1.xml
  def destroy
    @post451 = Post451.find(params[:id])
    @post451.destroy

    respond_to do |format|
      format.html { redirect_to(post451s_url) }
      format.xml  { head :ok }
    end
  end
end
