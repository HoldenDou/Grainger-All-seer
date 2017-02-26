randomRowsToDelete = randperm(143);
testSetX = X(randomRowsToDelete(1:30), :);
trainingSetX = X(randomRowsToDelete(31:143), :);
testSetY = y(:, randomRowsToDelete(1:30));
trainingSetY = y(:, randomRowsToDelete(31:143));