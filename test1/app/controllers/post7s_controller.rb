class Post7sController < ApplicationController
  # GET /post7s
  # GET /post7s.xml
  def index
    @post7s = Post7.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post7s }
    end
  end

  # GET /post7s/1
  # GET /post7s/1.xml
  def show
    @post7 = Post7.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post7 }
    end
  end

  # GET /post7s/new
  # GET /post7s/new.xml
  def new
    @post7 = Post7.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post7 }
    end
  end

  # GET /post7s/1/edit
  def edit
    @post7 = Post7.find(params[:id])
  end

  # POST /post7s
  # POST /post7s.xml
  def create
    @post7 = Post7.new(params[:post7])

    respond_to do |format|
      if @post7.save
        format.html { redirect_to(@post7, :notice => 'Post7 was successfully created.') }
        format.xml  { render :xml => @post7, :status => :created, :location => @post7 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post7.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post7s/1
  # PUT /post7s/1.xml
  def update
    @post7 = Post7.find(params[:id])

    respond_to do |format|
      if @post7.update_attributes(params[:post7])
        format.html { redirect_to(@post7, :notice => 'Post7 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post7.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post7s/1
  # DELETE /post7s/1.xml
  def destroy
    @post7 = Post7.find(params[:id])
    @post7.destroy

    respond_to do |format|
      format.html { redirect_to(post7s_url) }
      format.xml  { head :ok }
    end
  end
end
