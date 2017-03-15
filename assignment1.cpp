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
Mat source, destination;
int ddepth;

double delta;
Point anchor;

ddepth=-1;
anchor=Point( -1, -1 );
delta=0.0;
float kdata[] = {1, 2, 1, 0, 0, 0, -1, -2, -1};
Mat kernel(3,3,CV_32F, kdata);

source = imread(file_name);
filter2D(source, destination, ddepth , kernel, anchor, delta, BORDER_DEFAULT );
namedWindow( "source", CV_WINDOW_AUTOSIZE );
namedWindow( "destination", CV_WINDOW_AUTOSIZE );
imshow( "source", source );
imshow( "destination", destination );
waitKey(0);
return 0;
}
