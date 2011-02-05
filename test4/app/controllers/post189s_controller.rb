class Post189sController < ApplicationController
  # GET /post189s
  # GET /post189s.xml
  def index
    @post189s = Post189.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post189s }
    end
  end

  # GET /post189s/1
  # GET /post189s/1.xml
  def show
    @post189 = Post189.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post189 }
    end
  end

  # GET /post189s/new
  # GET /post189s/new.xml
  def new
    @post189 = Post189.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post189 }
    end
  end

  # GET /post189s/1/edit
  def edit
    @post189 = Post189.find(params[:id])
  end

  # POST /post189s
  # POST /post189s.xml
  def create
    @post189 = Post189.new(params[:post189])

    respond_to do |format|
      if @post189.save
        format.html { redirect_to(@post189, :notice => 'Post189 was successfully created.') }
        format.xml  { render :xml => @post189, :status => :created, :location => @post189 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post189.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post189s/1
  # PUT /post189s/1.xml
  def update
    @post189 = Post189.find(params[:id])

    respond_to do |format|
      if @post189.update_attributes(params[:post189])
        format.html { redirect_to(@post189, :notice => 'Post189 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post189.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post189s/1
  # DELETE /post189s/1.xml
  def destroy
    @post189 = Post189.find(params[:id])
    @post189.destroy

    respond_to do |format|
      format.html { redirect_to(post189s_url) }
      format.xml  { head :ok }
    end
  end
end
