rawToPivot = (json) ->
    if json is null or eval json is null or eval json is undefined then console.log 'json Data is corrupted'
    jsonHolder = eval json