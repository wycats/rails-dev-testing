class Post321sController < ApplicationController
  # GET /post321s
  # GET /post321s.xml
  def index
    @post321s = Post321.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post321s }
    end
  end

  # GET /post321s/1
  # GET /post321s/1.xml
  def show
    @post321 = Post321.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post321 }
    end
  end

  # GET /post321s/new
  # GET /post321s/new.xml
  def new
    @post321 = Post321.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post321 }
    end
  end

  # GET /post321s/1/edit
  def edit
    @post321 = Post321.find(params[:id])
  end

  # POST /post321s
  # POST /post321s.xml
  def create
    @post321 = Post321.new(params[:post321])

    respond_to do |format|
      if @post321.save
        format.html { redirect_to(@post321, :notice => 'Post321 was successfully created.') }
        format.xml  { render :xml => @post321, :status => :created, :location => @post321 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post321.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post321s/1
  # PUT /post321s/1.xml
  def update
    @post321 = Post321.find(params[:id])

    respond_to do |format|
      if @post321.update_attributes(params[:post321])
        format.html { redirect_to(@post321, :notice => 'Post321 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post321.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post321s/1
  # DELETE /post321s/1.xml
  def destroy
    @post321 = Post321.find(params[:id])
    @post321.destroy

    respond_to do |format|
      format.html { redirect_to(post321s_url) }
      format.xml  { head :ok }
    end
  end
end
