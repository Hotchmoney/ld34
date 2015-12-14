stats[0]=argument0;
stats[1]=argument1;
stats[2]=argument2;
stats[3]=argument3;
var waterflag=argument4;
var caveflag=argument5;
var i,j;
var maxint;
var secondmax;
var toReturn;
var rand;
toReturn=0;
maxint=0;
secondmax=1;

if (stats[maxint]<stats[secondmax]){
    maxint=1;
    secondmax=0;
}

for (i=0;i<4;i++){
    if (stats[maxint]<stats[i]){
        maxint=i;
    }
}//end for loop (have found the maximum int)

for(j=0;j<4;j++){
    if (maxint!=j){
        if (stats[secondmax]<stats[j]){
            secondmax=j;
        }else if (stats[secondmax]==stats[j]){
            rand = irandom_range(0,9);
            if (rand<5){
                secondmax=j;
            }else{
                secondmax=secondmax;
            }
        }
    }
}//end for loop (have found the second max int)

if (waterflag==true && caveflag==false){
    toReturn+=100;
    toReturn+=(maxint*10);
    return toReturn;
}else if (waterflag==false && caveflag==true){
    toReturn+=200;
    toReturn+=(maxint*10);
    return toReturn;
}else if (waterflag==true && caveflag==true){
    rand=irandom_range(0,9);
    if (rand<5){
        toReturn+=100;
    }else{
        toReturn+=200;
    }
    toReturn+=(maxint*10);
    return toReturn;
}else{
    toReturn=0;
}

switch (secondmax){

    case 0:
        toReturn+=0;
        break;
    case 1:
        toReturn+=1;
        break;
    case 2:
        toReturn+=2;
        break;
    case 3:
        toReturn+=3;
        break;

}

switch (maxint){
    case 0:
        toReturn+=0;
        break;
    case 1:
        toReturn+=10;
        break;
    case 2:
        toReturn+=20;
        break;
    case 3:
        toReturn+=30;
        break;
}

return toReturn;
    
