class StaticController < ApplicationController
  def about
  	@title_page = "A propos de  Mallotromy - Lille France"
	@meta_description = "Explication sur Mallotromy. Mallotromy est un jeu de gage et un jeu d'alcool pour se divertir en soirée "
	@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy, gallery, about, a propos, soirée, mariages"
  end

  def rules
  	@title_page = "Les règles de Mallotromy - Lille France"
	@meta_description = "Les règles du jeu Mallotromy. Jouer à malltromy durant vos soirée, mariages, enterrement de vie de garçon et enterrement de vie de jeune fille "
	@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy, règles, rules, soirée, mariages"
  end
end
