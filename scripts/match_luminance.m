



INPUT_PATH = '/Users/chrisiyer/_Current/thesis_folder/face_experiment/stimuli/version1_gray';
% INPUT_PATH = '/Users/chrisiyer/_Current/thesis_folder/face_experiment/stimuli/test';
OUTPUT_PATH = '/Users/chrisiyer/_Current/thesis_folder/face_experiment/stimuli/version1_gray_lm';

image_files = dir(fullfile(INPUT_PATH, "*.png")); % get all file names
nim = length(image_files);

images = cell(nim,1);
templates = cell(nim,1);
maps = cell(nim,1);
alphas = cell(nim,1);

for i = 1:nim
    % read in image, irrelevant map term, and alpha data
    [images{i,1}, maps{i,1}, alphas{i,1}] = imread(fullfile(image_files(i).folder, image_files(i).name), BackgroundColor = 'none');
end

%%%
new_images = SHINE(images, alphas);
%%%
% custom2 -> luminance1 -> lumMatch1 -> find automatically2

for j = 1:nim
    imwrite(new_images{j,1}, fullfile(OUTPUT_PATH, image_files(j).name), 'png', 'Alpha', alphas{j,1});
end

% opaqueIdx = find(alpha);
% newim = img(opaqueIdx);
% newims = SHINE(newim);
% imwrite(img1, 'test.png', 'png', 'Alpha', alpha1 )


