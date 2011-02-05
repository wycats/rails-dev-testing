class Post393sController < ApplicationController
  # GET /post393s
  # GET /post393s.xml
  def index
    @post393s = Post393.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post393s }
    end
  end

  # GET /post393s/1
  # GET /post393s/1.xml
  def show
    @post393 = Post393.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post393 }
    end
  end

  # GET /post393s/new
  # GET /post393s/new.xml
  def new
    @post393 = Post393.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post393 }
    end
  end

  # GET /post393s/1/edit
  def edit
    @post393 = Post393.find(params[:id])
  end

  # POST /post393s
  # POST /post393s.xml
  def create
    @post393 = Post393.new(params[:post393])

    respond_to do |format|
      if @post393.save
        format.html { redirect_to(@post393, :notice => 'Post393 was successfully created.') }
        format.xml  { render :xml => @post393, :status => :created, :location => @post393 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post393.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post393s/1
  # PUT /post393s/1.xml
  def update
    @post393 = Post393.find(params[:id])

    respond_to do |format|
      if @post393.update_attributes(params[:post393])
        format.html { redirect_to(@post393, :notice => 'Post393 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post393.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post393s/1
  # DELETE /post393s/1.xml
  def destroy
    @post393 = Post393.find(params[:id])
    @post393.destroy

    respond_to do |format|
      format.html { redirect_to(post393s_url) }
      format.xml  { head :ok }
    end
  end
end
