class Post135sController < ApplicationController
  # GET /post135s
  # GET /post135s.xml
  def index
    @post135s = Post135.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post135s }
    end
  end

  # GET /post135s/1
  # GET /post135s/1.xml
  def show
    @post135 = Post135.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post135 }
    end
  end

  # GET /post135s/new
  # GET /post135s/new.xml
  def new
    @post135 = Post135.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post135 }
    end
  end

  # GET /post135s/1/edit
  def edit
    @post135 = Post135.find(params[:id])
  end

  # POST /post135s
  # POST /post135s.xml
  def create
    @post135 = Post135.new(params[:post135])

    respond_to do |format|
      if @post135.save
        format.html { redirect_to(@post135, :notice => 'Post135 was successfully created.') }
        format.xml  { render :xml => @post135, :status => :created, :location => @post135 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post135.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post135s/1
  # PUT /post135s/1.xml
  def update
    @post135 = Post135.find(params[:id])

    respond_to do |format|
      if @post135.update_attributes(params[:post135])
        format.html { redirect_to(@post135, :notice => 'Post135 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post135.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post135s/1
  # DELETE /post135s/1.xml
  def destroy
    @post135 = Post135.find(params[:id])
    @post135.destroy

    respond_to do |format|
      format.html { redirect_to(post135s_url) }
      format.xml  { head :ok }
    end
  end
end
