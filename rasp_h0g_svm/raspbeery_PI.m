function [rpi]=raspbeery_PI()
rpi=raspi();
myserialdevice = serialdev(rpi,'/dev/ttyAMA0');
cam = cameraboard(rpi,'Resolution','640x480');
for i=1:10
img = snapshot(cam);
img=imshow(img);
drawnow
end
fname='F:\FYP Project\New_Files_final\rasp_h0g_svm';
filename = sprintf('pu_%d.png',1);
saveas(img, fullfile(fname, filename), 'png');
end



