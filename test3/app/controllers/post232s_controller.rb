class Post232sController < ApplicationController
  # GET /post232s
  # GET /post232s.xml
  def index
    @post232s = Post232.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post232s }
    end
  end

  # GET /post232s/1
  # GET /post232s/1.xml
  def show
    @post232 = Post232.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post232 }
    end
  end

  # GET /post232s/new
  # GET /post232s/new.xml
  def new
    @post232 = Post232.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post232 }
    end
  end

  # GET /post232s/1/edit
  def edit
    @post232 = Post232.find(params[:id])
  end

  # POST /post232s
  # POST /post232s.xml
  def create
    @post232 = Post232.new(params[:post232])

    respond_to do |format|
      if @post232.save
        format.html { redirect_to(@post232, :notice => 'Post232 was successfully created.') }
        format.xml  { render :xml => @post232, :status => :created, :location => @post232 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post232.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post232s/1
  # PUT /post232s/1.xml
  def update
    @post232 = Post232.find(params[:id])

    respond_to do |format|
      if @post232.update_attributes(params[:post232])
        format.html { redirect_to(@post232, :notice => 'Post232 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post232.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post232s/1
  # DELETE /post232s/1.xml
  def destroy
    @post232 = Post232.find(params[:id])
    @post232.destroy

    respond_to do |format|
      format.html { redirect_to(post232s_url) }
      format.xml  { head :ok }
    end
  end
end
