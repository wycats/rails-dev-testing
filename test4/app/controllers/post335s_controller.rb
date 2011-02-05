class Post335sController < ApplicationController
  # GET /post335s
  # GET /post335s.xml
  def index
    @post335s = Post335.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post335s }
    end
  end

  # GET /post335s/1
  # GET /post335s/1.xml
  def show
    @post335 = Post335.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post335 }
    end
  end

  # GET /post335s/new
  # GET /post335s/new.xml
  def new
    @post335 = Post335.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post335 }
    end
  end

  # GET /post335s/1/edit
  def edit
    @post335 = Post335.find(params[:id])
  end

  # POST /post335s
  # POST /post335s.xml
  def create
    @post335 = Post335.new(params[:post335])

    respond_to do |format|
      if @post335.save
        format.html { redirect_to(@post335, :notice => 'Post335 was successfully created.') }
        format.xml  { render :xml => @post335, :status => :created, :location => @post335 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post335.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post335s/1
  # PUT /post335s/1.xml
  def update
    @post335 = Post335.find(params[:id])

    respond_to do |format|
      if @post335.update_attributes(params[:post335])
        format.html { redirect_to(@post335, :notice => 'Post335 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post335.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post335s/1
  # DELETE /post335s/1.xml
  def destroy
    @post335 = Post335.find(params[:id])
    @post335.destroy

    respond_to do |format|
      format.html { redirect_to(post335s_url) }
      format.xml  { head :ok }
    end
  end
end
