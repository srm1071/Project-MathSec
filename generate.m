function [R]= generate()
%         if rand<.5
% % %         generate strings
%         h=rand;
%         if h<.1
%             R='One';
%         elseif h<.2
%             R='Two';
%         elseif h<.3
%             R='Three';
%         elseif h<.4
%             R='Four';
%         elseif h<.5
%             R='Five';
%         elseif h<.6
%             R='Six';
%         elseif h<.7
%             R='Seven';
%         elseif h<.8
%             R='Eight';
%         elseif h<.9
%             R='Nine';    
%         else
%             R='Ten';
%         end
%     else
% %         generate numeric
        h=rand;
        if h<.1
            R='1';
        elseif h<.2
            R='2';
        elseif h<.3
            R='3';
        elseif h<.4
            R='4';
        elseif h<.5
            R='5';
        elseif h<.6
            R='6';
        elseif h<.7
            R='7';
        elseif h<.8
            R='8';
        elseif h<.9
            R='9';    
        else
            R='10';
        end
%         end
end