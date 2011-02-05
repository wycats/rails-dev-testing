class Post163sController < ApplicationController
  # GET /post163s
  # GET /post163s.xml
  def index
    @post163s = Post163.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post163s }
    end
  end

  # GET /post163s/1
  # GET /post163s/1.xml
  def show
    @post163 = Post163.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post163 }
    end
  end

  # GET /post163s/new
  # GET /post163s/new.xml
  def new
    @post163 = Post163.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post163 }
    end
  end

  # GET /post163s/1/edit
  def edit
    @post163 = Post163.find(params[:id])
  end

  # POST /post163s
  # POST /post163s.xml
  def create
    @post163 = Post163.new(params[:post163])

    respond_to do |format|
      if @post163.save
        format.html { redirect_to(@post163, :notice => 'Post163 was successfully created.') }
        format.xml  { render :xml => @post163, :status => :created, :location => @post163 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post163.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post163s/1
  # PUT /post163s/1.xml
  def update
    @post163 = Post163.find(params[:id])

    respond_to do |format|
      if @post163.update_attributes(params[:post163])
        format.html { redirect_to(@post163, :notice => 'Post163 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post163.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post163s/1
  # DELETE /post163s/1.xml
  def destroy
    @post163 = Post163.find(params[:id])
    @post163.destroy

    respond_to do |format|
      format.html { redirect_to(post163s_url) }
      format.xml  { head :ok }
    end
  end
end
