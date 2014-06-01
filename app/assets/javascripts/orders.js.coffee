# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Add nested before refactoring
# @add_nested = add_nested = (element)->
#   $('.' + element + ':last')
#     .clone()
#     .appendTo('#' + element + 's')
#     .html     (_,v)-> v.replace  /_(\d+)_/g,  (match, index)-> '_' + (+index + 1) + '_'
#     .html     (_,v)-> v.replace /\[(\d+)\]/g, (match, index)-> '[' + (+index + 1) + ']'
#     .html     (_,v)-> v.replace  /#(\d+)/g,   (match, index)-> '#' + (+index + 1)
#     .attr id: (_,v)-> v.replace  /_(\d+)/g,   (match, index)-> '_' + (+index + 1)

@add_nested = add_nested = (element)->
  Old =
    id:        /_(\d+)_/g
    name:     /\[(\d+)\]/g
    elementN:  /#(\d+)/g
    elementId: /_(\d+)/g
  New = 
    id:        ->(match, index)->('_' + (+index + 1) + '_')
    name:      ->(match, index)->('[' + (+index + 1) + ']')
    elementN:  ->(match, index)->('#' + (+index + 1))
    elementId: ->(match, index)->('_' + (+index + 1))

  replace = (old_v, new_v)-> (_,v)-> v.replace(old_v, new_v)

  $('.' + element + ':last')
    .clone()
    .appendTo('#' + element + 's')
    .html     replace Old.id,        New.id()
    .html     replace Old.name,      New.name()
    .html     replace Old.elementN,  New.elementN()
    .attr id: replace Old.elementId, New.elementId()

@remove_nested = remove_nested = (element)->
  $('.' + element + ':last').remove() if ($('.' + element).length > 1)