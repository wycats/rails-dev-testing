class Post186sController < ApplicationController
  # GET /post186s
  # GET /post186s.xml
  def index
    @post186s = Post186.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post186s }
    end
  end

  # GET /post186s/1
  # GET /post186s/1.xml
  def show
    @post186 = Post186.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post186 }
    end
  end

  # GET /post186s/new
  # GET /post186s/new.xml
  def new
    @post186 = Post186.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post186 }
    end
  end

  # GET /post186s/1/edit
  def edit
    @post186 = Post186.find(params[:id])
  end

  # POST /post186s
  # POST /post186s.xml
  def create
    @post186 = Post186.new(params[:post186])

    respond_to do |format|
      if @post186.save
        format.html { redirect_to(@post186, :notice => 'Post186 was successfully created.') }
        format.xml  { render :xml => @post186, :status => :created, :location => @post186 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post186.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post186s/1
  # PUT /post186s/1.xml
  def update
    @post186 = Post186.find(params[:id])

    respond_to do |format|
      if @post186.update_attributes(params[:post186])
        format.html { redirect_to(@post186, :notice => 'Post186 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post186.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post186s/1
  # DELETE /post186s/1.xml
  def destroy
    @post186 = Post186.find(params[:id])
    @post186.destroy

    respond_to do |format|
      format.html { redirect_to(post186s_url) }
      format.xml  { head :ok }
    end
  end
end
