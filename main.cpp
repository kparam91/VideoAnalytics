

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
source = imread(file_name);
namedWindow( "window1", CV_WINDOW_AUTOSIZE );
imshow( "window1", source );
waitKey(0);
return 0;
}

