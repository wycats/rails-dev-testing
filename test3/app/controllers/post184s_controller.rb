class Post184sController < ApplicationController
  # GET /post184s
  # GET /post184s.xml
  def index
    @post184s = Post184.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post184s }
    end
  end

  # GET /post184s/1
  # GET /post184s/1.xml
  def show
    @post184 = Post184.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post184 }
    end
  end

  # GET /post184s/new
  # GET /post184s/new.xml
  def new
    @post184 = Post184.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post184 }
    end
  end

  # GET /post184s/1/edit
  def edit
    @post184 = Post184.find(params[:id])
  end

  # POST /post184s
  # POST /post184s.xml
  def create
    @post184 = Post184.new(params[:post184])

    respond_to do |format|
      if @post184.save
        format.html { redirect_to(@post184, :notice => 'Post184 was successfully created.') }
        format.xml  { render :xml => @post184, :status => :created, :location => @post184 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post184.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post184s/1
  # PUT /post184s/1.xml
  def update
    @post184 = Post184.find(params[:id])

    respond_to do |format|
      if @post184.update_attributes(params[:post184])
        format.html { redirect_to(@post184, :notice => 'Post184 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post184.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post184s/1
  # DELETE /post184s/1.xml
  def destroy
    @post184 = Post184.find(params[:id])
    @post184.destroy

    respond_to do |format|
      format.html { redirect_to(post184s_url) }
      format.xml  { head :ok }
    end
  end
end
