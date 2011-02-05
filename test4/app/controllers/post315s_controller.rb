class Post315sController < ApplicationController
  # GET /post315s
  # GET /post315s.xml
  def index
    @post315s = Post315.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post315s }
    end
  end

  # GET /post315s/1
  # GET /post315s/1.xml
  def show
    @post315 = Post315.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post315 }
    end
  end

  # GET /post315s/new
  # GET /post315s/new.xml
  def new
    @post315 = Post315.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post315 }
    end
  end

  # GET /post315s/1/edit
  def edit
    @post315 = Post315.find(params[:id])
  end

  # POST /post315s
  # POST /post315s.xml
  def create
    @post315 = Post315.new(params[:post315])

    respond_to do |format|
      if @post315.save
        format.html { redirect_to(@post315, :notice => 'Post315 was successfully created.') }
        format.xml  { render :xml => @post315, :status => :created, :location => @post315 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post315.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post315s/1
  # PUT /post315s/1.xml
  def update
    @post315 = Post315.find(params[:id])

    respond_to do |format|
      if @post315.update_attributes(params[:post315])
        format.html { redirect_to(@post315, :notice => 'Post315 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post315.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post315s/1
  # DELETE /post315s/1.xml
  def destroy
    @post315 = Post315.find(params[:id])
    @post315.destroy

    respond_to do |format|
      format.html { redirect_to(post315s_url) }
      format.xml  { head :ok }
    end
  end
end
