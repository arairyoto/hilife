class BitecController < ApplicationController
    
    def index
    end
    
    def callcenter_file
        @callcenter_files = CallcenterFile.all
    end
    
    def import
        #file名が同一のものがあれば登録できないようにする(二重登録防止)
        filename = params[:filename]
        if CallcenterFile.where(file_name: filename).empty? then
            CallcenterFile.import(params[:file])
            imported_file = ImportedFile.create(filename: filename)
            imported_file.update(:file_name => filename)
        else
        end
        redirect_to "/bitec/callcenter_file"
    end
    
end
