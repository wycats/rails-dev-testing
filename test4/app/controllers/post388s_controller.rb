class Post388sController < ApplicationController
  # GET /post388s
  # GET /post388s.xml
  def index
    @post388s = Post388.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post388s }
    end
  end

  # GET /post388s/1
  # GET /post388s/1.xml
  def show
    @post388 = Post388.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post388 }
    end
  end

  # GET /post388s/new
  # GET /post388s/new.xml
  def new
    @post388 = Post388.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post388 }
    end
  end

  # GET /post388s/1/edit
  def edit
    @post388 = Post388.find(params[:id])
  end

  # POST /post388s
  # POST /post388s.xml
  def create
    @post388 = Post388.new(params[:post388])

    respond_to do |format|
      if @post388.save
        format.html { redirect_to(@post388, :notice => 'Post388 was successfully created.') }
        format.xml  { render :xml => @post388, :status => :created, :location => @post388 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post388.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post388s/1
  # PUT /post388s/1.xml
  def update
    @post388 = Post388.find(params[:id])

    respond_to do |format|
      if @post388.update_attributes(params[:post388])
        format.html { redirect_to(@post388, :notice => 'Post388 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post388.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post388s/1
  # DELETE /post388s/1.xml
  def destroy
    @post388 = Post388.find(params[:id])
    @post388.destroy

    respond_to do |format|
      format.html { redirect_to(post388s_url) }
      format.xml  { head :ok }
    end
  end
end
