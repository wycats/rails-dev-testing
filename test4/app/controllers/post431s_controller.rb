class Post431sController < ApplicationController
  # GET /post431s
  # GET /post431s.xml
  def index
    @post431s = Post431.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post431s }
    end
  end

  # GET /post431s/1
  # GET /post431s/1.xml
  def show
    @post431 = Post431.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post431 }
    end
  end

  # GET /post431s/new
  # GET /post431s/new.xml
  def new
    @post431 = Post431.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post431 }
    end
  end

  # GET /post431s/1/edit
  def edit
    @post431 = Post431.find(params[:id])
  end

  # POST /post431s
  # POST /post431s.xml
  def create
    @post431 = Post431.new(params[:post431])

    respond_to do |format|
      if @post431.save
        format.html { redirect_to(@post431, :notice => 'Post431 was successfully created.') }
        format.xml  { render :xml => @post431, :status => :created, :location => @post431 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post431.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post431s/1
  # PUT /post431s/1.xml
  def update
    @post431 = Post431.find(params[:id])

    respond_to do |format|
      if @post431.update_attributes(params[:post431])
        format.html { redirect_to(@post431, :notice => 'Post431 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post431.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post431s/1
  # DELETE /post431s/1.xml
  def destroy
    @post431 = Post431.find(params[:id])
    @post431.destroy

    respond_to do |format|
      format.html { redirect_to(post431s_url) }
      format.xml  { head :ok }
    end
  end
end
