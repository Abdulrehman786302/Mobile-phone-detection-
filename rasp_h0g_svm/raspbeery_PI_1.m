function raspbeery_PI_1(rpi) 
%%input image with mobile%%
cam = cameraboard(rpi,'Resolution','640x480');
for j=1:10
img1= snapshot(cam);
img1=imshow(img1);
drawnow
end
fname='F:\FYP Project\New_Files_final\rasp_h0g_svm';
filename = sprintf('Int_%d.png', 1);
saveas(img1, fullfile(fname, filename), 'png');
end