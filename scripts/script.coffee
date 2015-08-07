### there are no semicolons inb coffee 
 unless is the opposite of if 
 is = === 
 isn't = !== 
 ? checks for null ###

data = [
    {color: "blue", shape: "circle"}
    {color: "red", shape: "triangle"}
]

hiddenAttributes = []

for i in [1..200]
    hiddenAttributes.push 'val'+i

hiddenAttributes.splice 9, 1

tpl = $.pivotUtilities.aggregatorTemplates

axis =
    rows: ["sctin1"]
    cols: ["val10"]
    hiddenAttributes: hiddenAttributes
    aggregators: {
        'this': -> tpl.value()()
        }
    
#$('#mainTable').text('this')
#$('#mainTable').css('border', '1px solid red').css('height', '500px').html('this').text('that')

sampleData3a = sampleData2['rows']

#value (data, rowKey, colKey) ->
#    {
#        count: 0,
#        push: () -> this.count
#        value: data
#        format: (x) -> x
#        label: 'Value'
#    }

$("#mainTable").pivotUI(sampleData3a,axis)

$('.click').click(->changeTheme(this.value))

changeTheme = (num = 0) ->
    $('#pivotThemes').attr('href',"css/pivotThemes/theme#{num}.css")

#$.ajax
#    url: 'http://116.67.44.22/fgis-stat/json/chart/select/rowsAndMetadata.do?chartId=020100'
#    dataType: 'jsonp'
#    error: (jqXHR, textStatus, errorThrown) ->
#        console.log 'Unable to retrieve data from source'
#        console.error errorThrown
#    success: (data, textStatus, jqXHR) ->
#        sampleData2 = val(data)
#        $("#mainTable").pivotUI(sampleData2,axis)

###

sum = $.pivotUtilities.aggregatorTemplates.sum
numberFormat = $.pivotUtilities.numberFormat
intFormat = numberFormat({digitsAfterDecimal: 0})

$("#output").pivot(
    [
        {color: "blue", shape: "circle", value: 1},
        {color: "red", shape: "triangle", value: 2},
        {color: "blue", shape: "circle", value: 3},
        {color: "red", shape: "triangle", value: 4}
    ],
    {
        rows: ["color"],
        cols: ["shape"],
        aggregator: sum(intFormat)(["value"])
    }
)
###