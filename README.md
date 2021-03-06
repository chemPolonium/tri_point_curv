# tri_point_curv
calculate curvature of the circle defined by 3 points

how to use

```
r = tripointcurv(x,y,dim)
```

x can be a matrix.
y can be a matrix.
dim is the dimension.
each 3 point on this dimension will be calculated.

```
>> x = [0:10;1:11;5:0.5:10]

x =

         0    1.0000    2.0000    3.0000    4.0000    5.0000    6.0000    7.0000    8.0000    9.0000   10.0000
    1.0000    2.0000    3.0000    4.0000    5.0000    6.0000    7.0000    8.0000    9.0000   10.0000   11.0000
    5.0000    5.5000    6.0000    6.5000    7.0000    7.5000    8.0000    8.5000    9.0000    9.5000   10.0000

>> y = x.^2

y =

         0    1.0000    4.0000    9.0000   16.0000   25.0000   36.0000   49.0000   64.0000   81.0000  100.0000
    1.0000    4.0000    9.0000   16.0000   25.0000   36.0000   49.0000   64.0000   81.0000  100.0000  121.0000
   25.0000   30.2500   36.0000   42.2500   49.0000   56.2500   64.0000   72.2500   81.0000   90.2500  100.0000

>> tripointcurv(x,y)

ans =

   1.0e+03 *

    0.0219    0.0787    0.1861    0.3562    0.6022    0.9375    1.3756    1.9299       NaN    3.4414       NaN

>> tripointcurv(x,y,2)

ans =

   1.0e+03 *

    0.0050    0.0332    0.1097    0.2581    0.5026    0.8671    1.3756    2.0521    2.9206
    0.0332    0.1097    0.2581    0.5026    0.8671    1.3756    2.0521    2.9206    4.0050
    0.6724    0.8715    1.1067    1.3808    1.6969    2.0580    2.4671    2.9273    3.4414
```

Implicit expansion is supported.

```
>> x = 0:10

x =

     0     1     2     3     4     5     6     7     8     9    10

>> y = [x.^2;x.^2.5;x.^3]

y =

   1.0e+03 *

         0    0.0010    0.0040    0.0090    0.0160    0.0250    0.0360    0.0490    0.0640    0.0810    0.1000
         0    0.0010    0.0057    0.0156    0.0320    0.0559    0.0882    0.1296    0.1810    0.2430    0.3162
         0    0.0010    0.0080    0.0270    0.0640    0.1250    0.2160    0.3430    0.5120    0.7290    1.0000

>> tripointcurv(x,y,2)

ans =

   1.0e+05 *

    0.0001    0.0003    0.0011    0.0026    0.0050    0.0087    0.0138    0.0205    0.0292
    0.0001    0.0007    0.0033    0.0106    0.0259    0.0538    0.0998    0.1703    0.2729
    0.0001    0.0015    0.0110    0.0461    0.1407    0.3500    0.7564    1.4746    2.6573
```