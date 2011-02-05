class Post261sController < ApplicationController
  # GET /post261s
  # GET /post261s.xml
  def index
    @post261s = Post261.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post261s }
    end
  end

  # GET /post261s/1
  # GET /post261s/1.xml
  def show
    @post261 = Post261.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post261 }
    end
  end

  # GET /post261s/new
  # GET /post261s/new.xml
  def new
    @post261 = Post261.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post261 }
    end
  end

  # GET /post261s/1/edit
  def edit
    @post261 = Post261.find(params[:id])
  end

  # POST /post261s
  # POST /post261s.xml
  def create
    @post261 = Post261.new(params[:post261])

    respond_to do |format|
      if @post261.save
        format.html { redirect_to(@post261, :notice => 'Post261 was successfully created.') }
        format.xml  { render :xml => @post261, :status => :created, :location => @post261 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post261.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post261s/1
  # PUT /post261s/1.xml
  def update
    @post261 = Post261.find(params[:id])

    respond_to do |format|
      if @post261.update_attributes(params[:post261])
        format.html { redirect_to(@post261, :notice => 'Post261 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post261.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post261s/1
  # DELETE /post261s/1.xml
  def destroy
    @post261 = Post261.find(params[:id])
    @post261.destroy

    respond_to do |format|
      format.html { redirect_to(post261s_url) }
      format.xml  { head :ok }
    end
  end
end
