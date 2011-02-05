class Post169sController < ApplicationController
  # GET /post169s
  # GET /post169s.xml
  def index
    @post169s = Post169.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post169s }
    end
  end

  # GET /post169s/1
  # GET /post169s/1.xml
  def show
    @post169 = Post169.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post169 }
    end
  end

  # GET /post169s/new
  # GET /post169s/new.xml
  def new
    @post169 = Post169.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post169 }
    end
  end

  # GET /post169s/1/edit
  def edit
    @post169 = Post169.find(params[:id])
  end

  # POST /post169s
  # POST /post169s.xml
  def create
    @post169 = Post169.new(params[:post169])

    respond_to do |format|
      if @post169.save
        format.html { redirect_to(@post169, :notice => 'Post169 was successfully created.') }
        format.xml  { render :xml => @post169, :status => :created, :location => @post169 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post169.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post169s/1
  # PUT /post169s/1.xml
  def update
    @post169 = Post169.find(params[:id])

    respond_to do |format|
      if @post169.update_attributes(params[:post169])
        format.html { redirect_to(@post169, :notice => 'Post169 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post169.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post169s/1
  # DELETE /post169s/1.xml
  def destroy
    @post169 = Post169.find(params[:id])
    @post169.destroy

    respond_to do |format|
      format.html { redirect_to(post169s_url) }
      format.xml  { head :ok }
    end
  end
end
