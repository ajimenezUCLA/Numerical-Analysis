 a = [ ...
 8.96187818e-01
 7.00334212e-01
 8.81721369e-01
-5.51974562e-01
 1.15549181e+00
 1.00808409e+00
 2.06735762e+00
-4.21941514e-01
 3.89263477e+00
 4.09300943e-01
-5.05967311e-01
 3.18415295e+00
 4.09153094e+00
 5.99081715e-01
 3.00175441e+00
-8.92236884e-01
 3.47762254e+00
 2.31565957e+00
 4.84242891e+00
-1.14685189e+00
 9.15356281e-01
-4.37006646e-01
 3.60229313e+00
 3.01719934e+00
 4.45047474e+00
 3.68711482e+00
 1.67616823e-01
 3.88481663e+00
 1.30458035e+00
 2.94119198e+00
-4.10491162e-01
 4.27852249e+00
 3.49656316e+00
 4.69914047e+00
 3.09437776e+00
 2.62231653e+00
-6.10554928e-01
 4.15606384e+00
 1.22838450e+00
 3.63295477e-01
 1.97661400e+00
 3.87908624e+00
 1.54162804e+00
 1.59274164e+00
 1.44639584e+00
 2.94048129e+00
 5.73660875e-01
 2.63837661e+00
 4.20013278e-01
-7.75934138e-01
 3.82924050e+00
 6.52890325e-01
 2.39331709e-01
-1.11234409e+00
 1.38024714e+00
 1.36960933e+00
-4.39809329e-01
 1.80114112e+00
 7.45963345e-01
 3.07562547e+00
-5.92683561e-01
 3.61395575e+00
 3.67606427e+00
 4.27431438e+00
 1.04619577e+00
 4.44475860e+00
 3.58926088e+00
 3.44898344e-01
 5.03135688e-01
 1.74214618e+00
-5.27882686e-01
 2.78813886e+00
 2.97185217e-01
 1.52431020e+00
-1.11439522e+00
 1.59114450e+00
 3.66149808e+00
 3.91320845e+00
-5.26566932e-01
 3.93674275e+00
 5.79671364e-01
 2.55474236e+00
 1.77232716e+00
 4.08279010e-01
-1.18485408e-01
 3.50466914e+00
 4.54780895e+00
-4.30228369e-01
-9.23128528e-01
 3.84620658e+00
-5.35339049e-01
 2.62260250e+00
-7.00939752e-01
-2.40793560e-01
-1.04065355e+00
-9.91506907e-01
 4.93903510e+00
 3.04830768e+00
 4.76245349e-01
 4.56591874e+00 ];
b = [ ...
-1.27335109e+00
-5.21150668e-01
-9.25305115e-01
-1.47498575e+00
-6.11286856e-01
-1.59609056e-01
 3.80717831e-01
-4.63778539e-01
 1.51345870e-01
-1.59373196e+00
-1.05191572e+00
-7.52036807e-01
 6.30755630e-01
-1.30386428e+00
 2.23719499e-01
-1.43640681e+00
-1.60659892e-01
-2.11085069e-01
 2.74901558e-01
-1.33839156e+00
-6.60044243e-01
-1.19042322e+00
-2.28042842e-01
-3.90664199e-01
 8.73900750e-02
 5.92525550e-01
-1.11081232e+00
 9.32163700e-01
-1.21728830e+00
-1.21532981e+00
-1.29308721e+00
 3.39926107e-01
-7.07946097e-02
-2.10357953e-01
-1.35406484e-01
-4.58767989e-01
-1.79646696e+00
-1.90664088e-01
-3.34829323e-01
-1.60236373e+00
-1.31767549e+00
-6.47419085e-01
-7.59603865e-01
-6.09362761e-01
-6.31512117e-01
-5.78531171e-01
-1.53709451e+00
-5.44184333e-01
-1.61375667e+00
-6.02984285e-01
 3.24192448e-01
-1.21814386e+00
-1.40958778e+00
-2.04920884e+00
-5.47639543e-01
-1.02088879e+00
-1.21696448e+00
 4.29393420e-02
-1.95087963e+00
-5.39948017e-01
-1.24130785e+00
-5.96934417e-01
-6.81871324e-01
 5.01991798e-01
-5.69389371e-01
 1.00050225e+00
 2.44992259e-01
-1.97943394e+00
-2.29648571e+00
-6.65623227e-01
-1.30951652e+00
-2.46652220e-01
-7.33517983e-01
-1.42182443e+00
-1.64176082e+00
-1.04107182e+00
 3.26230021e-01
 4.06406975e-01
-1.53204187e+00
-1.42653002e-01
-7.98906514e-01
-4.78657927e-02
-6.02002881e-01
-1.61201110e+00
-9.04410097e-01
-3.21532418e-01
 6.69233494e-01
-1.36008289e+00
-1.18870878e+00
-1.77541296e-01
-1.97732743e+00
-3.76038189e-01
-2.24225080e+00
-1.17447048e+00
-1.86641627e+00
-1.58725492e+00
 4.73068313e-02
-3.78309640e-01
-1.89556472e+00
 1.44099079e-01 ];


format long;
X = [ones(length(a),1) a];
b1 = X\b;
bCalc1 = X*b1;
scatter(a,b);
hold on;
%plot(a,b,'.');
plot(a,bCalc1,'- -'); 
grid on;
lsline;
beta = regress (a,b);
 %{
x=a; y=b;
format long;
yCalc1 = (x\y)*x;
scatter(x,y);
hold on;

grid on;
X = [ones(length(x),1) x];
B = X\y;
yCalc2 = X*B;
plot(x,yCalc2,'--');
Rsq1 = 1 - sum((y - yCalc1).^2)/sum((y - mean(y)).^2);
Rsq2 = 1 - sum((y - yCalc2).^2)/sum((y - mean(y)).^2);
%}