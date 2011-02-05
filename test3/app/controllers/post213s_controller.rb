class Post213sController < ApplicationController
  # GET /post213s
  # GET /post213s.xml
  def index
    @post213s = Post213.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post213s }
    end
  end

  # GET /post213s/1
  # GET /post213s/1.xml
  def show
    @post213 = Post213.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post213 }
    end
  end

  # GET /post213s/new
  # GET /post213s/new.xml
  def new
    @post213 = Post213.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post213 }
    end
  end

  # GET /post213s/1/edit
  def edit
    @post213 = Post213.find(params[:id])
  end

  # POST /post213s
  # POST /post213s.xml
  def create
    @post213 = Post213.new(params[:post213])

    respond_to do |format|
      if @post213.save
        format.html { redirect_to(@post213, :notice => 'Post213 was successfully created.') }
        format.xml  { render :xml => @post213, :status => :created, :location => @post213 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post213.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post213s/1
  # PUT /post213s/1.xml
  def update
    @post213 = Post213.find(params[:id])

    respond_to do |format|
      if @post213.update_attributes(params[:post213])
        format.html { redirect_to(@post213, :notice => 'Post213 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post213.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post213s/1
  # DELETE /post213s/1.xml
  def destroy
    @post213 = Post213.find(params[:id])
    @post213.destroy

    respond_to do |format|
      format.html { redirect_to(post213s_url) }
      format.xml  { head :ok }
    end
  end
end
