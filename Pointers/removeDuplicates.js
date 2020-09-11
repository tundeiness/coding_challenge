const duplicates = (arr) => {
  let n = 0;
  if (arr.length == 0){
    return 0;
  }

   for(let i = 0; i < arr.length; i+=1){
     if(i === 0 || arr[i] !== arr[i-1]){
       arr[n+=1] = arr[i];
     }
   }
   return n;
}

const arr = [0,2,0,1,2,1,2,1,3,3,4].sort((a, b) => a - b);

console.log(duplicates(arr));
