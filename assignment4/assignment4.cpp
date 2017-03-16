#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <vector>
#include "opencv2/core/mat.hpp"

using namespace cv;
using namespace std;


int main(int argc, char **argv)
{
Mat source, gray;
double hu[7];
Moments stop_cmoments;
int counter=1;
Mat arr[5];
int o;
ofstream myfile;
double xbar,ybar;
string desti_file="Covariance";
string extension=".txt";
cout<<"Enter group Name";
cin>>desti_file;
desti_file="Covariance"+desti_file+extension;
while(1){
string file_name=argv[counter];
cout<<file_name<<endl;

if(file_name=="z"){
	
	break;
}
source = imread(file_name);

cvtColor( source, gray, CV_BGR2GRAY );
stop_cmoments=moments(gray, false );
xbar=stop_cmoments.m10/stop_cmoments.m00;// Xbar= M10/M00
ybar=stop_cmoments.m01/stop_cmoments.m00;// Ybar= M01/M00
HuMoments(stop_cmoments,hu );

vector<double> featureVector;
/*****************Spatial Moments****************/
featureVector.push_back(stop_cmoments.m00);
featureVector.push_back(stop_cmoments.m10 );
featureVector.push_back(stop_cmoments.m01);
featureVector.push_back(stop_cmoments.m20);
featureVector.push_back(stop_cmoments.m11);
featureVector.push_back(stop_cmoments.m02);
featureVector.push_back(stop_cmoments.m30);
featureVector.push_back(stop_cmoments.m21);
featureVector.push_back(stop_cmoments.m12);
featureVector.push_back(stop_cmoments.m03);
/******************Hu Moments*******************/
featureVector.push_back(xbar);
featureVector.push_back(ybar);
for(int i=0;i<7;i++){
featureVector.push_back(hu[i]);
}

//Conversion to matrix

arr[counter-1]=Mat(featureVector, true);
featureVector.clear();
counter++;
}
Mat mean, covariance;

calcCovarMatrix(arr,5, covariance, mean, CV_COVAR_NORMAL|CV_COVAR_SCALE);
myfile.open (desti_file.c_str());
myfile<<"Covariance: "<<covariance<<endl;
myfile<<"------------------------------------------------------------------------"<<endl;
myfile<<"Mean"<<mean<<endl;
myfile.close();
return 0;
}








