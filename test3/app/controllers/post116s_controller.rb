class Post116sController < ApplicationController
  # GET /post116s
  # GET /post116s.xml
  def index
    @post116s = Post116.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post116s }
    end
  end

  # GET /post116s/1
  # GET /post116s/1.xml
  def show
    @post116 = Post116.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post116 }
    end
  end

  # GET /post116s/new
  # GET /post116s/new.xml
  def new
    @post116 = Post116.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post116 }
    end
  end

  # GET /post116s/1/edit
  def edit
    @post116 = Post116.find(params[:id])
  end

  # POST /post116s
  # POST /post116s.xml
  def create
    @post116 = Post116.new(params[:post116])

    respond_to do |format|
      if @post116.save
        format.html { redirect_to(@post116, :notice => 'Post116 was successfully created.') }
        format.xml  { render :xml => @post116, :status => :created, :location => @post116 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post116.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post116s/1
  # PUT /post116s/1.xml
  def update
    @post116 = Post116.find(params[:id])

    respond_to do |format|
      if @post116.update_attributes(params[:post116])
        format.html { redirect_to(@post116, :notice => 'Post116 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post116.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post116s/1
  # DELETE /post116s/1.xml
  def destroy
    @post116 = Post116.find(params[:id])
    @post116.destroy

    respond_to do |format|
      format.html { redirect_to(post116s_url) }
      format.xml  { head :ok }
    end
  end
end
