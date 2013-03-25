class LineItemsController < ApplicationController
  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @line_items }
    end
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @line_item }
    end
  end

  # GET /line_items/new
  # GET /line_items/new.json
  def new
    @line_item = LineItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @line_item }
    end
  end

  # GET /line_items/1/edit
  def edit

  end

  # POST /line_items
  # POST /line_items.json
  def create
    if current_cart.nil?
      @cart = Cart.create(params[:cart])
      cookies[:cart_id] = { :value => @cart.id , :expires => 1.hour.from_now }
      @line_items = LineItem.create(product_id: params[:product_id], cart_id: @cart.id)
      redirect_to cart_path(@cart)
    else
      @cart = current_cart
      current_item = @cart.line_items.find_by_product_id(params[:product_id])
      if current_item
        flash[:notice]="This product is already in cart"
        redirect_to(:back)
      else
        @line_item = @cart.line_items.build(product_id: params[:product_id])
        @line_item.save
        redirect_to cart_path(@cart)
      end
    end
  end
   

  # PUT /line_items/1
  # PUT /line_items/1.json
  def update
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      if @line_item.update_attributes(params[:line_item])
        format.html { redirect_to @line_item, notice: 'Line item was successfully updated.' }
      else
        format.html { redirect_to(:back) }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @cart = current_cart
    @line_item = LineItem.find(params[:id])
    @line_item.destroy

    respond_to do |format|
      format.html { redirect_to cart_path(@cart) }
      format.json { head :no_content }
    end
  end
end