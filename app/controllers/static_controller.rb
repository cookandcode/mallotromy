class StaticController < ApplicationController
  def about
  	@title_page = "A propos de  Mallotromy - Lille France"
	@meta_description = "Explication sur Mallotromy. Mallotromy est un jeu de gage et un jeu d'alcool pour se divertir en soiree "
	@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy, gallery, about, a propos, soiree, mariages"
  end

  def rules
  	@title_page = "Les regles de Mallotromy - Lille France"
	@meta_description = "Les regles du jeu Mallotromy. Jouer a mallotromy durant vos soiree, mariages, enterrement de vie de garcon et enterrement de vie de jeune fille "
	@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy, regles, rules, soirée, mariages"
  end
end
