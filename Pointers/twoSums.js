const twoSums=(arr, target)=>{

  let l = 0;
  let r = arr.length - 1;
  let store = [];
  while(l < r){
    let sum = arr[l] + arr[r];
    if(sum < target){
        l += 1
    }else if(sum > target){
        r -= 1
    }else{
      store.push(l );
      store.push(r );
      return store
    }
  }
}

const arr = [1,3,5,7,9,12,15,19]

console.log(twoSums(arr, 10));
