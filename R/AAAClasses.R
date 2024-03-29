# R classes for Toc data


setClass('Roc',
         slots = list(
           table = 'data.frame',
           AUC = 'numeric',
           maxAUC = 'numeric',
           minAUC = 'numeric'           
         ),  
         prototype = list(	
           table = data.frame(),
           AUC = 0,
           maxAUC = 0,
           minAUC = 0
         ),
         validity = function(object)	{
           c1 <- inherits(object@table, "data.frame")
           if (!c1) { stop('invalid class for @table') }
           return(c1)
         }
)

setClass('Toc',
	slots = list(
		prevalence = 'numeric',
		population = 'numeric',
		units = 'character'
	),	
	prototype = list(	
	  prevalence = 0,
	  population = 0,
	  units = ""
	),
	validity = function(object)	{
		c1 <- inherits(object@table, "data.frame")
		if (!c1) { stop('invalid class for @TOCtable') }
		return(c1)
	},
  contains = "Roc"
)




