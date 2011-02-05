class Post282sController < ApplicationController
  # GET /post282s
  # GET /post282s.xml
  def index
    @post282s = Post282.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post282s }
    end
  end

  # GET /post282s/1
  # GET /post282s/1.xml
  def show
    @post282 = Post282.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post282 }
    end
  end

  # GET /post282s/new
  # GET /post282s/new.xml
  def new
    @post282 = Post282.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post282 }
    end
  end

  # GET /post282s/1/edit
  def edit
    @post282 = Post282.find(params[:id])
  end

  # POST /post282s
  # POST /post282s.xml
  def create
    @post282 = Post282.new(params[:post282])

    respond_to do |format|
      if @post282.save
        format.html { redirect_to(@post282, :notice => 'Post282 was successfully created.') }
        format.xml  { render :xml => @post282, :status => :created, :location => @post282 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post282.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post282s/1
  # PUT /post282s/1.xml
  def update
    @post282 = Post282.find(params[:id])

    respond_to do |format|
      if @post282.update_attributes(params[:post282])
        format.html { redirect_to(@post282, :notice => 'Post282 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post282.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post282s/1
  # DELETE /post282s/1.xml
  def destroy
    @post282 = Post282.find(params[:id])
    @post282.destroy

    respond_to do |format|
      format.html { redirect_to(post282s_url) }
      format.xml  { head :ok }
    end
  end
end
