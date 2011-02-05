class Post427sController < ApplicationController
  # GET /post427s
  # GET /post427s.xml
  def index
    @post427s = Post427.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post427s }
    end
  end

  # GET /post427s/1
  # GET /post427s/1.xml
  def show
    @post427 = Post427.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post427 }
    end
  end

  # GET /post427s/new
  # GET /post427s/new.xml
  def new
    @post427 = Post427.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post427 }
    end
  end

  # GET /post427s/1/edit
  def edit
    @post427 = Post427.find(params[:id])
  end

  # POST /post427s
  # POST /post427s.xml
  def create
    @post427 = Post427.new(params[:post427])

    respond_to do |format|
      if @post427.save
        format.html { redirect_to(@post427, :notice => 'Post427 was successfully created.') }
        format.xml  { render :xml => @post427, :status => :created, :location => @post427 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post427.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post427s/1
  # PUT /post427s/1.xml
  def update
    @post427 = Post427.find(params[:id])

    respond_to do |format|
      if @post427.update_attributes(params[:post427])
        format.html { redirect_to(@post427, :notice => 'Post427 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post427.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post427s/1
  # DELETE /post427s/1.xml
  def destroy
    @post427 = Post427.find(params[:id])
    @post427.destroy

    respond_to do |format|
      format.html { redirect_to(post427s_url) }
      format.xml  { head :ok }
    end
  end
end
