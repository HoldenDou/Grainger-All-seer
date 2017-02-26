function X = photoinput(file_name)
    X = zeros(1,1452);
    img_in = imread(file_name);
    img_in = rgb2gray(img_in);
    img_in = imresize(img_in,[33,44]);
    img_in = img_in(:);
    X(1,:) = img_in';
%     img_in = imresize(img_in, [1216, 2844]);
%     table0 = img_in(4:1195,15:845,:);
%     table1 = img_in(4:1195,2077:2837,:);
%     imwrite(table0,'table0.jpg');
%     imwrite(table1,'table1.jpg');
%     resize0 = rgb2gray(table0);
%     resize1 = rgb2gray(table1);
%     resize0 = imresize(resize0,[33,44]);
%     resize1 = imresize(resize1,[33,44]);
%     resize0 = resize0(:);
%     resize1 = resize1(:);
%     X(1,:) = resize0';
%     X(2,:) = resize1';
                                        
