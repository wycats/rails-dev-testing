class Post350sController < ApplicationController
  # GET /post350s
  # GET /post350s.xml
  def index
    @post350s = Post350.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post350s }
    end
  end

  # GET /post350s/1
  # GET /post350s/1.xml
  def show
    @post350 = Post350.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post350 }
    end
  end

  # GET /post350s/new
  # GET /post350s/new.xml
  def new
    @post350 = Post350.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post350 }
    end
  end

  # GET /post350s/1/edit
  def edit
    @post350 = Post350.find(params[:id])
  end

  # POST /post350s
  # POST /post350s.xml
  def create
    @post350 = Post350.new(params[:post350])

    respond_to do |format|
      if @post350.save
        format.html { redirect_to(@post350, :notice => 'Post350 was successfully created.') }
        format.xml  { render :xml => @post350, :status => :created, :location => @post350 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post350.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post350s/1
  # PUT /post350s/1.xml
  def update
    @post350 = Post350.find(params[:id])

    respond_to do |format|
      if @post350.update_attributes(params[:post350])
        format.html { redirect_to(@post350, :notice => 'Post350 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post350.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post350s/1
  # DELETE /post350s/1.xml
  def destroy
    @post350 = Post350.find(params[:id])
    @post350.destroy

    respond_to do |format|
      format.html { redirect_to(post350s_url) }
      format.xml  { head :ok }
    end
  end
end
