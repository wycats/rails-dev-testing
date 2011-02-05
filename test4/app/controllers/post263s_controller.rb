class Post263sController < ApplicationController
  # GET /post263s
  # GET /post263s.xml
  def index
    @post263s = Post263.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post263s }
    end
  end

  # GET /post263s/1
  # GET /post263s/1.xml
  def show
    @post263 = Post263.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post263 }
    end
  end

  # GET /post263s/new
  # GET /post263s/new.xml
  def new
    @post263 = Post263.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post263 }
    end
  end

  # GET /post263s/1/edit
  def edit
    @post263 = Post263.find(params[:id])
  end

  # POST /post263s
  # POST /post263s.xml
  def create
    @post263 = Post263.new(params[:post263])

    respond_to do |format|
      if @post263.save
        format.html { redirect_to(@post263, :notice => 'Post263 was successfully created.') }
        format.xml  { render :xml => @post263, :status => :created, :location => @post263 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post263.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post263s/1
  # PUT /post263s/1.xml
  def update
    @post263 = Post263.find(params[:id])

    respond_to do |format|
      if @post263.update_attributes(params[:post263])
        format.html { redirect_to(@post263, :notice => 'Post263 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post263.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post263s/1
  # DELETE /post263s/1.xml
  def destroy
    @post263 = Post263.find(params[:id])
    @post263.destroy

    respond_to do |format|
      format.html { redirect_to(post263s_url) }
      format.xml  { head :ok }
    end
  end
end
