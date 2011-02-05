class Post400sController < ApplicationController
  # GET /post400s
  # GET /post400s.xml
  def index
    @post400s = Post400.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post400s }
    end
  end

  # GET /post400s/1
  # GET /post400s/1.xml
  def show
    @post400 = Post400.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post400 }
    end
  end

  # GET /post400s/new
  # GET /post400s/new.xml
  def new
    @post400 = Post400.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post400 }
    end
  end

  # GET /post400s/1/edit
  def edit
    @post400 = Post400.find(params[:id])
  end

  # POST /post400s
  # POST /post400s.xml
  def create
    @post400 = Post400.new(params[:post400])

    respond_to do |format|
      if @post400.save
        format.html { redirect_to(@post400, :notice => 'Post400 was successfully created.') }
        format.xml  { render :xml => @post400, :status => :created, :location => @post400 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post400.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post400s/1
  # PUT /post400s/1.xml
  def update
    @post400 = Post400.find(params[:id])

    respond_to do |format|
      if @post400.update_attributes(params[:post400])
        format.html { redirect_to(@post400, :notice => 'Post400 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post400.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post400s/1
  # DELETE /post400s/1.xml
  def destroy
    @post400 = Post400.find(params[:id])
    @post400.destroy

    respond_to do |format|
      format.html { redirect_to(post400s_url) }
      format.xml  { head :ok }
    end
  end
end
