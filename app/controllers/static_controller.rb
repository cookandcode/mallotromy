#!/bin/env ruby
# encoding: utf-8
class StaticController < ApplicationController
  layout 'landing'
  
  def about
  	@title_page = "À propos de  Mallotromy - Lille France"
	  @meta_description = "Explication sur Mallotromy. Mallotromy est un jeu de gage et un jeu d'alcool pour se divertir en soirée "
	  @meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy, gallery, about, à propos, soirée, mariages"
  end

  def rules
  	@title_page = "Les règles de Mallotromy - Lille France"
	  @meta_description = "Les règles du jeu Mallotromy. Jouer à mallotromy durant vos soiree, mariages, enterrement de vie de garçon et enterrement de vie de jeune fille "
	  @meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy, règles, regles, rules, soirée, mariages"
  end
end
