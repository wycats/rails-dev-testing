class Post157sController < ApplicationController
  # GET /post157s
  # GET /post157s.xml
  def index
    @post157s = Post157.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post157s }
    end
  end

  # GET /post157s/1
  # GET /post157s/1.xml
  def show
    @post157 = Post157.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post157 }
    end
  end

  # GET /post157s/new
  # GET /post157s/new.xml
  def new
    @post157 = Post157.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post157 }
    end
  end

  # GET /post157s/1/edit
  def edit
    @post157 = Post157.find(params[:id])
  end

  # POST /post157s
  # POST /post157s.xml
  def create
    @post157 = Post157.new(params[:post157])

    respond_to do |format|
      if @post157.save
        format.html { redirect_to(@post157, :notice => 'Post157 was successfully created.') }
        format.xml  { render :xml => @post157, :status => :created, :location => @post157 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post157.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post157s/1
  # PUT /post157s/1.xml
  def update
    @post157 = Post157.find(params[:id])

    respond_to do |format|
      if @post157.update_attributes(params[:post157])
        format.html { redirect_to(@post157, :notice => 'Post157 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post157.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post157s/1
  # DELETE /post157s/1.xml
  def destroy
    @post157 = Post157.find(params[:id])
    @post157.destroy

    respond_to do |format|
      format.html { redirect_to(post157s_url) }
      format.xml  { head :ok }
    end
  end
end
