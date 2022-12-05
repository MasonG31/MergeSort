let unsortedIntegers = [38,27,34,8,10]
func merge(left : [Int], right: [Int]) -> [Int] {
    var il = 0
    var ir = 0
    var sortedArray: [Int] = []
    while il < left.count && ir < right.count{
        if left[il] < right[ir]{
            sortedArray.append(left[il])
            il += 1
        }
        else if right[ir] < left[il]{
            sortedArray.append(right[ir])
            ir += 1
        }
        else{
            sortedArray.append(left[il])
            sortedArray.append(right[ir])
        }
    }
    while il < left.count{
        sortedArray.append(left[il])
        il += 1
    }
    while ir < right.count{
        sortedArray.append(right[ir])
        ir += 1
    }
    return sortedArray
}
func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else{ return array
    }
    print("Array: \(array)")
    let mid = ((array.count + array.count % 2) / 2)
    let l = mergeSort(array: Array(array[0..<mid]))
    print("Array: \(l)")
    let r = mergeSort(array: Array(array[mid..<array.count]))
    print("Array: \(r)")
    let jacob = merge(left: l, right: r)
    return jacob


}
print("Array: \(mergeSort(array: unsortedIntegers))")
