class School < ApplicationRecord

    def self.search(search)
        if search
            where(["lower(nombre_ee) LIKE ?","%#{search.downcase}%"])
        else
            all
        end
    end

    def self.to_csv
        attributes = %w{rbd nombre_ee region_nom comuna_nom tipo_ee dependencia estado_apertura fecha_solicitud fecha_inicio asistencia modo_ingreso ok_sostenedor propuesta_retorno oficio_salud respuesta_salud ok_salud rex id comentarios created_at updated_at}
        CSV.generate(headers: true, col_sep: ";", encoding: 'ISO8859-1') do |csv|
            csv << attributes

            all.each do |school|
                csv << school.attributes.values_at(*attributes)
            
            end

        end


    end


end
