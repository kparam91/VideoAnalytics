#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>

using namespace cv;
using namespace std;

#define KERNEL_SIZE  3
int main()
{
string file_name="tsign.png";
Mat source,gray,gau, destination;
Mat kernel;
int ddepth;
double delta;
Point anchor;

ddepth=-1;
anchor=Point( -1, -1 );
delta=0.0;
namedWindow( "source", CV_WINDOW_AUTOSIZE );
namedWindow( "destination", CV_WINDOW_AUTOSIZE );
namedWindow( "gaussian", CV_WINDOW_AUTOSIZE );
for(int i=1;i<=7;i=i+2){
	kernel=getGaussianKernel(i,-1);
	source = imread(file_name);
	cvtColor( source, gray, CV_BGR2GRAY );
	sepFilter2D(gray, gau, ddepth, kernel, kernel );
	Laplacian(gau,destination,ddepth,i);
	imshow( "source", source );
	imshow( "gaussian", gau );
	imshow( "destination", destination );
	cout<<"kernel coefficients"<<kernel<<endl;
	waitKey(0);
}


waitKey(0);
return 0;
}
