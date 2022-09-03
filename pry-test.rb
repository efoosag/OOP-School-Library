require 'pry'

def list_basketball_teams_by_city
  nested = [
  {:fruit => {
    :apple => 1,
    :banana => 2,
    :grape => 6
  },
  :pets => {
    :fido => "dog",
    :whiskers => "cat",
    :charles => "mouse",
    :bitey => "snake"
  },
  :teams => {
    :new_york => {
      :baseball => ["mets", "yankees"],
      :basketball =>["knicks", "nets"],
      :football => ["giants", "jets"],
      :hockey => ["rangers", "islanders"]
    },
    :los_angeles => {
      :baseball => ["dodgers", "angels"],
      :basketball =>["lakers", "clippers"],
      :football => ["rams", "chargers"],
      :hockey => ["kings"]
    },
    :chicago => {
      :baseball => ["cubs"],
      :basketball => ["bulls"],
      :football => ["bears"],
      :hockey => ["blackhawks"]
      }
    }
  }
]
  nested.each do |element|
    element.each do |outer_key, outer_value|
      if outer_key == :teams
        outer_value.each do |city, sport_hash|
          sport_hash.each do |sport, teams_array|
            if sport == :basketball
              puts "The basketball teams for #{city} are #{teams_array}."              
            end            
          end
        end
      end
    end
  end
end

list_basketball_teams_by_city