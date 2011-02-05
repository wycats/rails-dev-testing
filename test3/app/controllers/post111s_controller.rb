class Post111sController < ApplicationController
  # GET /post111s
  # GET /post111s.xml
  def index
    @post111s = Post111.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post111s }
    end
  end

  # GET /post111s/1
  # GET /post111s/1.xml
  def show
    @post111 = Post111.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post111 }
    end
  end

  # GET /post111s/new
  # GET /post111s/new.xml
  def new
    @post111 = Post111.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post111 }
    end
  end

  # GET /post111s/1/edit
  def edit
    @post111 = Post111.find(params[:id])
  end

  # POST /post111s
  # POST /post111s.xml
  def create
    @post111 = Post111.new(params[:post111])

    respond_to do |format|
      if @post111.save
        format.html { redirect_to(@post111, :notice => 'Post111 was successfully created.') }
        format.xml  { render :xml => @post111, :status => :created, :location => @post111 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post111.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post111s/1
  # PUT /post111s/1.xml
  def update
    @post111 = Post111.find(params[:id])

    respond_to do |format|
      if @post111.update_attributes(params[:post111])
        format.html { redirect_to(@post111, :notice => 'Post111 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post111.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post111s/1
  # DELETE /post111s/1.xml
  def destroy
    @post111 = Post111.find(params[:id])
    @post111.destroy

    respond_to do |format|
      format.html { redirect_to(post111s_url) }
      format.xml  { head :ok }
    end
  end
end
