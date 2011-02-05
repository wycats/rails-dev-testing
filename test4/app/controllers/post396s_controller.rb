class Post396sController < ApplicationController
  # GET /post396s
  # GET /post396s.xml
  def index
    @post396s = Post396.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post396s }
    end
  end

  # GET /post396s/1
  # GET /post396s/1.xml
  def show
    @post396 = Post396.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post396 }
    end
  end

  # GET /post396s/new
  # GET /post396s/new.xml
  def new
    @post396 = Post396.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post396 }
    end
  end

  # GET /post396s/1/edit
  def edit
    @post396 = Post396.find(params[:id])
  end

  # POST /post396s
  # POST /post396s.xml
  def create
    @post396 = Post396.new(params[:post396])

    respond_to do |format|
      if @post396.save
        format.html { redirect_to(@post396, :notice => 'Post396 was successfully created.') }
        format.xml  { render :xml => @post396, :status => :created, :location => @post396 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post396.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post396s/1
  # PUT /post396s/1.xml
  def update
    @post396 = Post396.find(params[:id])

    respond_to do |format|
      if @post396.update_attributes(params[:post396])
        format.html { redirect_to(@post396, :notice => 'Post396 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post396.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post396s/1
  # DELETE /post396s/1.xml
  def destroy
    @post396 = Post396.find(params[:id])
    @post396.destroy

    respond_to do |format|
      format.html { redirect_to(post396s_url) }
      format.xml  { head :ok }
    end
  end
end
