class Search < ApplicationRecord

    
    def search_schools
    schools = School.all

    schools = schools.where(["lower(nombre_ee) LIKE ?","%#{nombre.downcase}%"]) if nombre.present?
    schools = schools.where(["rbd = ?",rbd]) if rbd.present?
    schools = schools.where(["region_nom LIKE ?",region]) if region.present?
    schools = schools.where(["estado_apertura LIKE ?",estado]) if estado.present?
    schools = schools.where(["comuna_nom LIKE ?",comuna]) if comuna.present?

    return schools
    end




end
