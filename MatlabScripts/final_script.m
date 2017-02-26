input_X = photoinput('photos/20170224_221457.jpg');
h_X = predict(Theta1, Theta2, input_X);

myFile = fopen('seatCount.dat', 'w');
fprintf(myFile, '%d', h_X);
fclose(myFile);