class Post224sController < ApplicationController
  # GET /post224s
  # GET /post224s.xml
  def index
    @post224s = Post224.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post224s }
    end
  end

  # GET /post224s/1
  # GET /post224s/1.xml
  def show
    @post224 = Post224.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post224 }
    end
  end

  # GET /post224s/new
  # GET /post224s/new.xml
  def new
    @post224 = Post224.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post224 }
    end
  end

  # GET /post224s/1/edit
  def edit
    @post224 = Post224.find(params[:id])
  end

  # POST /post224s
  # POST /post224s.xml
  def create
    @post224 = Post224.new(params[:post224])

    respond_to do |format|
      if @post224.save
        format.html { redirect_to(@post224, :notice => 'Post224 was successfully created.') }
        format.xml  { render :xml => @post224, :status => :created, :location => @post224 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post224.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post224s/1
  # PUT /post224s/1.xml
  def update
    @post224 = Post224.find(params[:id])

    respond_to do |format|
      if @post224.update_attributes(params[:post224])
        format.html { redirect_to(@post224, :notice => 'Post224 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post224.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post224s/1
  # DELETE /post224s/1.xml
  def destroy
    @post224 = Post224.find(params[:id])
    @post224.destroy

    respond_to do |format|
      format.html { redirect_to(post224s_url) }
      format.xml  { head :ok }
    end
  end
end
