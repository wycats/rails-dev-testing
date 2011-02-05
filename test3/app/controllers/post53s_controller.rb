class Post53sController < ApplicationController
  # GET /post53s
  # GET /post53s.xml
  def index
    @post53s = Post53.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post53s }
    end
  end

  # GET /post53s/1
  # GET /post53s/1.xml
  def show
    @post53 = Post53.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post53 }
    end
  end

  # GET /post53s/new
  # GET /post53s/new.xml
  def new
    @post53 = Post53.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post53 }
    end
  end

  # GET /post53s/1/edit
  def edit
    @post53 = Post53.find(params[:id])
  end

  # POST /post53s
  # POST /post53s.xml
  def create
    @post53 = Post53.new(params[:post53])

    respond_to do |format|
      if @post53.save
        format.html { redirect_to(@post53, :notice => 'Post53 was successfully created.') }
        format.xml  { render :xml => @post53, :status => :created, :location => @post53 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post53.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post53s/1
  # PUT /post53s/1.xml
  def update
    @post53 = Post53.find(params[:id])

    respond_to do |format|
      if @post53.update_attributes(params[:post53])
        format.html { redirect_to(@post53, :notice => 'Post53 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post53.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post53s/1
  # DELETE /post53s/1.xml
  def destroy
    @post53 = Post53.find(params[:id])
    @post53.destroy

    respond_to do |format|
      format.html { redirect_to(post53s_url) }
      format.xml  { head :ok }
    end
  end
end
