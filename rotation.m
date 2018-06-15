function [im1] = rotation(im,k)
    
    if k<.5
        R = 60*k;
        im1 = imrotate(im,-R);
    else 
        R = 60*k;
        im1 = imrotate(im,+R);
    end
end