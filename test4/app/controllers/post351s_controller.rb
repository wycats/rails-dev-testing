class Post351sController < ApplicationController
  # GET /post351s
  # GET /post351s.xml
  def index
    @post351s = Post351.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post351s }
    end
  end

  # GET /post351s/1
  # GET /post351s/1.xml
  def show
    @post351 = Post351.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post351 }
    end
  end

  # GET /post351s/new
  # GET /post351s/new.xml
  def new
    @post351 = Post351.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post351 }
    end
  end

  # GET /post351s/1/edit
  def edit
    @post351 = Post351.find(params[:id])
  end

  # POST /post351s
  # POST /post351s.xml
  def create
    @post351 = Post351.new(params[:post351])

    respond_to do |format|
      if @post351.save
        format.html { redirect_to(@post351, :notice => 'Post351 was successfully created.') }
        format.xml  { render :xml => @post351, :status => :created, :location => @post351 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post351.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post351s/1
  # PUT /post351s/1.xml
  def update
    @post351 = Post351.find(params[:id])

    respond_to do |format|
      if @post351.update_attributes(params[:post351])
        format.html { redirect_to(@post351, :notice => 'Post351 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post351.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post351s/1
  # DELETE /post351s/1.xml
  def destroy
    @post351 = Post351.find(params[:id])
    @post351.destroy

    respond_to do |format|
      format.html { redirect_to(post351s_url) }
      format.xml  { head :ok }
    end
  end
end
