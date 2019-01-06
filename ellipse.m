% Create a logical image of an ellipse with specified
% semi-major and semi-minor axes, center, and image size.
% First create the image.
imageSizeX = 640;
imageSizeY = 480;
[columnsInImage rowsInImage] = meshgrid(1:imageSizeX, 1:imageSizeY);
% Next create the ellipse in the image.
centerX = 320;
centerY = 240;
radiusX = 250;
radiusY = 150;
ellipsePixels = (rowsInImage - centerY).^2 ./ radiusY^2 ...
    + (columnsInImage - centerX).^2 ./ radiusX^2 <= 1;
% ellipsePixels is a 2D "logical" array.
% Now, display it.
image(ellipsePixels) ;
colormap([0 0 0; 1 1 1]);
title('Binary image of a ellipse', 'FontSize', 20);