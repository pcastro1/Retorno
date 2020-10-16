class School < ApplicationRecord

    def self.search(search)
        if search
            where(["lower(nombre_ee) LIKE ?","%#{search.downcase}%"])
        else
            all
        end
    end

end
