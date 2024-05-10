function img = customPreprocessImage(file)
    % Read the image from the given file path
    img = imread(file);
    
    % Resize the image to 227x227 pixels to match the input size of the model
    img = imresize(img, [227, 227]);
    
    % Apply additional preprocessing steps if needed, such as normalization
    % Example: Normalize pixel values to be in the range [0, 1]
    img = double(img) / 255;
end
