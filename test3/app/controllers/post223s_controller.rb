class Post223sController < ApplicationController
  # GET /post223s
  # GET /post223s.xml
  def index
    @post223s = Post223.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post223s }
    end
  end

  # GET /post223s/1
  # GET /post223s/1.xml
  def show
    @post223 = Post223.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post223 }
    end
  end

  # GET /post223s/new
  # GET /post223s/new.xml
  def new
    @post223 = Post223.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post223 }
    end
  end

  # GET /post223s/1/edit
  def edit
    @post223 = Post223.find(params[:id])
  end

  # POST /post223s
  # POST /post223s.xml
  def create
    @post223 = Post223.new(params[:post223])

    respond_to do |format|
      if @post223.save
        format.html { redirect_to(@post223, :notice => 'Post223 was successfully created.') }
        format.xml  { render :xml => @post223, :status => :created, :location => @post223 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post223.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post223s/1
  # PUT /post223s/1.xml
  def update
    @post223 = Post223.find(params[:id])

    respond_to do |format|
      if @post223.update_attributes(params[:post223])
        format.html { redirect_to(@post223, :notice => 'Post223 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post223.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post223s/1
  # DELETE /post223s/1.xml
  def destroy
    @post223 = Post223.find(params[:id])
    @post223.destroy

    respond_to do |format|
      format.html { redirect_to(post223s_url) }
      format.xml  { head :ok }
    end
  end
end
