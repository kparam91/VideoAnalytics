function m = moment(image,mask,p,q)
% Function to calculate any ordinary moment of the intersted image region
% Author:   Vishnu Muralidharan
% University of Alabama in Huntsville

% Inputs:   image: input image for which moments need to be calculated
%           mask: specifying this allows you to calculate moments for a
%           specified region
%           p,q: order of moments to be calculated
% Outputs:  m = moment of the specifed order fot the image
% Reference:  Visual Pattern Recognition by Moment Invariants


if ~exist('mask','var')
    mask = ones(size(image,1),size(image,2));   %if mask is not specified, select the whole image
end

image = double(image);
m=0; 
for i=1:1:size(mask,1)
    for j=1:1:size(mask,2)
        if mask(i,j) == 1
            m = m + (double((image(i,j))*(i^p)*(j^q))) ; %moment calculation
        end
    end
end

function cen_mmt = Centr_Moment(image,mask,p,q)
% Function to calculate the central moment of interested image region
% Author:   Vishnu Muralidharan
% University of Alabama in Huntsville

% Inputs:   image: image: input image for which moments need to be calculated
%           mask: specifying this allows you to calculate moments for a
%           specified region
%           p,q: order of moments to be calculated
% Outputs:  cen_mmt = central moment of the specifed order fot the image
% Reference:  Visual Pattern Recognition by Moment Invariants


if ~exist('mask','var')
    mask = ones(size(image,1),size(image,2)); %if mask is not spcified, select the whole image
end

image = double(image);

%moments necessary to compute components of centroid
m10 = moment(image,mask,1,0); 
m01 = moment(image,mask,0,1);
m00 = moment(image,mask,0,0);

%components of centroid
x_cen = floor(m10/m00);
y_cen = floor(m01/m00);

cen_mmt =0;

for i=1:1:size(mask,1)
    for j=1:1:size(mask,2)
        if mask(i,j) == 1
            cen_mmt = cen_mmt + (double(image(i,j))*((i-x_cen)^p)*((j-y_cen)^q)); %calculating central moment
        end
    end
end

function eta = SI_Moment(image, mask)
% Function to calculate the scale-invariant moment of interested image region
% Author:   Vishnu Muralidharan
% University of Alabama in Huntsville

% Inputs:   image: image: input image for which moments need to be calculated
%           mask: specifying this allows you to calculate moments for a
%           specified region
%           
% Outputs:  cen_mmt = central moment of the specifed order fot the image
% Reference:  Visual Pattern Recognition by Moment Invariants


image = double(image);
if ~exist('mask','var')
    mask = ones(size(image,1),size(image,2)); %if mask is not defined select the whole image
end

% computation of central moments upto order order 3
for i=1:1:4
    for j=1:1:4
        nu(i,j) = Centr_Moment(image, mask,i-1,j-1);
    end
end

% computation of scale invariant moments using central monets of upto order
% 3
eta = zeros(3,3);
for i=1:1:4
    for j=1:1:4
        if i+j >= 4
            eta(i,j) = (double(nu(i,j))/(double(nu(1,1)).^(double((i+j)/2)))); %scale invariant moment matrix
        end
    end
end

function inv_moments = Hu_Moments(eta)
% Function to calculate the Hu's moments of interested image region
% Author:   Vishnu Muralidharan
% University of Alabama in Huntsville

% Inputs:   eta: scale-invariant moment matrix of order 3
% Outputs:  inv_moments = array containing 7 invariant Hu's moments
% Reference:  Visual Pattern Recognition by Moment Invariants


%Calculation of various invariant Hu's moments
inv_moments(1) = eta(3,1) + eta(1,3);
inv_moments(2) = (eta(3,1) - eta(1,3))^2 + (4*eta(2,2)^2);
inv_moments(3) = (eta(4,1) - 3*eta(2,3))^2 + (3*eta(3,2) - eta(1,4))^2;
inv_moments(4) = (eta(4,1) + eta(2,3))^2 + (eta(3,1) + eta(1,4))^2;
inv_moments(5) = (eta(4,1) - 3*eta(2,3))*(eta(4,1) + eta(2,3))*((eta(4,1) + eta(2,3))^2 - 3*((eta(3,2) + eta(1,4))^2)) + (3*(eta(3,2) - eta(1,4)))*(eta(3,2) + eta(1,4))*(3*(eta(4,1) + eta(2,3))^2 - (eta(3,2) + eta(1,4))^2);
inv_moments(6) = (eta(3,1) - eta(1,3))*((eta(4,1)+eta(2,3))^2 - (eta(3,2)+ eta(1,4))^2) + 4*eta(2,2)*((eta(4,1) + eta(2,3))*(eta(3,2) + eta(1,4)));
inv_moments(7) = (3*eta(3,2) - eta(1,4))*(eta(4,1) + eta(2,3))*((eta(4,1) + eta(2,3))^2 - 3*(eta(3,2)-eta(1,4))^2) - (eta(4,1) - 3*eta(2,3))*(eta(3,2) + eta(1,4))*(3*(eta(4,1) + eta(2,3))^2 - (eta(3,2) + eta(1,4))^2);
