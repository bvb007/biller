class BillRecordsController < ApplicationController
  before_action :set_bill_record, only: [:show, :edit, :update, :destroy]

  # GET /bill_records
  def index
    @bill_records = BillRecord.all
  end

  # GET /bill_records/1
  def show
  end

  # GET /bill_records/new
  def new
    @bill_record = BillRecord.new
  end

  # GET /bill_records/1/edit
  def edit
  end

  # POST /bill_records
  def create
    quantity = params.fetch(:quantity).to_f
    rate = Rate.last.rate.to_f
    amount = quantity * rate
    bill_records = { quantity: quantity, rate: rate, amount: amount }
    @bill_record = BillRecord.new(bill_records)

    if @bill_record.save
      redirect_to @bill_record, notice: 'Bill record was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bill_records/1
  def update
    if @bill_record.update(bill_record_params)
      redirect_to @bill_record, notice: 'Bill record was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bill_records/1
  def destroy
    @bill_record.destroy
    redirect_to bill_records_url, notice: 'Bill record was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_record
      @bill_record = BillRecord.find(params[:id])
    end

end
