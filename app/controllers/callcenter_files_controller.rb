class CallcenterFilesController < ApplicationController
  before_action :set_callcenter_file, only: [:show, :edit, :update, :destroy]

  # GET /callcenter_files
  # GET /callcenter_files.json
  def index
    @callcenter_files = CallcenterFile.all
  end

  # GET /callcenter_files/1
  # GET /callcenter_files/1.json
  def show
  end

  # GET /callcenter_files/new
  def new
    @callcenter_file = CallcenterFile.new
  end

  # GET /callcenter_files/1/edit
  def edit
  end

  # POST /callcenter_files
  # POST /callcenter_files.json
  def create
    @callcenter_file = CallcenterFile.new(callcenter_file_params)

    respond_to do |format|
      if @callcenter_file.save
        format.html { redirect_to @callcenter_file, notice: 'Callcenter file was successfully created.' }
        format.json { render :show, status: :created, location: @callcenter_file }
      else
        format.html { render :new }
        format.json { render json: @callcenter_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /callcenter_files/1
  # PATCH/PUT /callcenter_files/1.json
  def update
    respond_to do |format|
      if @callcenter_file.update(callcenter_file_params)
        format.html { redirect_to @callcenter_file, notice: 'Callcenter file was successfully updated.' }
        format.json { render :show, status: :ok, location: @callcenter_file }
      else
        format.html { render :edit }
        format.json { render json: @callcenter_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /callcenter_files/1
  # DELETE /callcenter_files/1.json
  def destroy
    @callcenter_file.destroy
    respond_to do |format|
      format.html { redirect_to callcenter_files_url, notice: 'Callcenter file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_callcenter_file
      @callcenter_file = CallcenterFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def callcenter_file_params
      params.require(:callcenter_file).permit(:file_name, :uketsuke_id, :uketsuke_kubun, :yoyaku_kubun, :nyudenbi, :nyuden_jikoku, :uketsuke_sha, :kibou_iin, :baitaimei, :baitai_shousai, :shoshin_yoyakubi, :shoshin_yoyakujikoku, :raiinshamei_kana, :raiinshamei_kanji, :raiinsha_seibetsu, :raiinsya_yubinbangou, :raiinsha_jusyo, :raiinsha_denwa, :tokki_jikou, :call_kekka, :check, :marketing)
    end
end
