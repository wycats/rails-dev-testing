class Post219sController < ApplicationController
  # GET /post219s
  # GET /post219s.xml
  def index
    @post219s = Post219.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post219s }
    end
  end

  # GET /post219s/1
  # GET /post219s/1.xml
  def show
    @post219 = Post219.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post219 }
    end
  end

  # GET /post219s/new
  # GET /post219s/new.xml
  def new
    @post219 = Post219.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post219 }
    end
  end

  # GET /post219s/1/edit
  def edit
    @post219 = Post219.find(params[:id])
  end

  # POST /post219s
  # POST /post219s.xml
  def create
    @post219 = Post219.new(params[:post219])

    respond_to do |format|
      if @post219.save
        format.html { redirect_to(@post219, :notice => 'Post219 was successfully created.') }
        format.xml  { render :xml => @post219, :status => :created, :location => @post219 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post219.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post219s/1
  # PUT /post219s/1.xml
  def update
    @post219 = Post219.find(params[:id])

    respond_to do |format|
      if @post219.update_attributes(params[:post219])
        format.html { redirect_to(@post219, :notice => 'Post219 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post219.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post219s/1
  # DELETE /post219s/1.xml
  def destroy
    @post219 = Post219.find(params[:id])
    @post219.destroy

    respond_to do |format|
      format.html { redirect_to(post219s_url) }
      format.xml  { head :ok }
    end
  end
end
