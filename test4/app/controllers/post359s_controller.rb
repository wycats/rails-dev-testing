class Post359sController < ApplicationController
  # GET /post359s
  # GET /post359s.xml
  def index
    @post359s = Post359.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post359s }
    end
  end

  # GET /post359s/1
  # GET /post359s/1.xml
  def show
    @post359 = Post359.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post359 }
    end
  end

  # GET /post359s/new
  # GET /post359s/new.xml
  def new
    @post359 = Post359.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post359 }
    end
  end

  # GET /post359s/1/edit
  def edit
    @post359 = Post359.find(params[:id])
  end

  # POST /post359s
  # POST /post359s.xml
  def create
    @post359 = Post359.new(params[:post359])

    respond_to do |format|
      if @post359.save
        format.html { redirect_to(@post359, :notice => 'Post359 was successfully created.') }
        format.xml  { render :xml => @post359, :status => :created, :location => @post359 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post359.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post359s/1
  # PUT /post359s/1.xml
  def update
    @post359 = Post359.find(params[:id])

    respond_to do |format|
      if @post359.update_attributes(params[:post359])
        format.html { redirect_to(@post359, :notice => 'Post359 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post359.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post359s/1
  # DELETE /post359s/1.xml
  def destroy
    @post359 = Post359.find(params[:id])
    @post359.destroy

    respond_to do |format|
      format.html { redirect_to(post359s_url) }
      format.xml  { head :ok }
    end
  end
end
