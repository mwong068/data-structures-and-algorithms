

function getMaxUnits(boxes, unitsPerBox, truckSize) {
    // loops through array to find the largest units per box, puts index in hash with number and corresponding amount
    // loops through sorted hash amount of times = trucksize and multiplies key by value and adds together to get output
    
    let container = new Object ();
    let maxNumber = Math.max(...unitsPerBox);
    let maxIndex = unitsPerBox.indexOf(maxNumber);
    container[maxNumber] = maxIndex;
    for(var i = 0; i < unitsPerBox.length; i++){
        if(container[unitsPerBox[i]] === undefined){
            container[unitsPerBox[i] = i]
        }
    }
    console.log(container)

}