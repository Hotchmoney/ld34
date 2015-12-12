stats[0]=argument0;
stats[1]=argument1;
stats[2]=argument2;
stats[3]=argument3;
var i;
var maxindex;

maxindex=0;
for (i=0;i<=3;i+=1){
    if(stats[i]>stats[maxindex]){
        maxindex=i;
    }
}

return maxindex;
    
