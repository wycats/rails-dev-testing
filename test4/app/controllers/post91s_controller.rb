class Post91sController < ApplicationController
  # GET /post91s
  # GET /post91s.xml
  def index
    @post91s = Post91.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post91s }
    end
  end

  # GET /post91s/1
  # GET /post91s/1.xml
  def show
    @post91 = Post91.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post91 }
    end
  end

  # GET /post91s/new
  # GET /post91s/new.xml
  def new
    @post91 = Post91.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post91 }
    end
  end

  # GET /post91s/1/edit
  def edit
    @post91 = Post91.find(params[:id])
  end

  # POST /post91s
  # POST /post91s.xml
  def create
    @post91 = Post91.new(params[:post91])

    respond_to do |format|
      if @post91.save
        format.html { redirect_to(@post91, :notice => 'Post91 was successfully created.') }
        format.xml  { render :xml => @post91, :status => :created, :location => @post91 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post91.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post91s/1
  # PUT /post91s/1.xml
  def update
    @post91 = Post91.find(params[:id])

    respond_to do |format|
      if @post91.update_attributes(params[:post91])
        format.html { redirect_to(@post91, :notice => 'Post91 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post91.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post91s/1
  # DELETE /post91s/1.xml
  def destroy
    @post91 = Post91.find(params[:id])
    @post91.destroy

    respond_to do |format|
      format.html { redirect_to(post91s_url) }
      format.xml  { head :ok }
    end
  end
end
