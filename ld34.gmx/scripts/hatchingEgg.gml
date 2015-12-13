stats[0]=argument0;
stats[1]=argument1;
stats[2]=argument2;
stats[3]=argument3;
var waterflag=argument4;
var i;
var maxint;
var secondmax;
var toReturn;
toReturn=0;
maxint=0;

for (i=0;i<4;i++){
    if (stats[maxint]<stats[i]){
        i=maxint;
    }
}//end for loop (have found the maximum int)
secondmax=0;
for(i=0;i<4;i++){
    if (maxint!=i){
        if (stats[secondmax]<stats[i]){
            secondmax=i;
        }
    }
}//end for loop (have found the second max int)

if (waterflag==true){
    toReturn+=100;
    toReturn+=maxint;
    return toReturn;
}else{
    toreturn=0;
}//have sent waterflag

switch (secondmax){

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

switch (maxint){
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
show_debug_message(string(maxint));
show_debug_message(string(secondmax));
show_debug_message(string(toReturn));

return toReturn;
    
