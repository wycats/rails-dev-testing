class Post231sController < ApplicationController
  # GET /post231s
  # GET /post231s.xml
  def index
    @post231s = Post231.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post231s }
    end
  end

  # GET /post231s/1
  # GET /post231s/1.xml
  def show
    @post231 = Post231.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post231 }
    end
  end

  # GET /post231s/new
  # GET /post231s/new.xml
  def new
    @post231 = Post231.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post231 }
    end
  end

  # GET /post231s/1/edit
  def edit
    @post231 = Post231.find(params[:id])
  end

  # POST /post231s
  # POST /post231s.xml
  def create
    @post231 = Post231.new(params[:post231])

    respond_to do |format|
      if @post231.save
        format.html { redirect_to(@post231, :notice => 'Post231 was successfully created.') }
        format.xml  { render :xml => @post231, :status => :created, :location => @post231 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post231.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post231s/1
  # PUT /post231s/1.xml
  def update
    @post231 = Post231.find(params[:id])

    respond_to do |format|
      if @post231.update_attributes(params[:post231])
        format.html { redirect_to(@post231, :notice => 'Post231 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post231.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post231s/1
  # DELETE /post231s/1.xml
  def destroy
    @post231 = Post231.find(params[:id])
    @post231.destroy

    respond_to do |format|
      format.html { redirect_to(post231s_url) }
      format.xml  { head :ok }
    end
  end
end
