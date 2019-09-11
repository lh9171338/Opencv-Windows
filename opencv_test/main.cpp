#include <iostream>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

int main()
{
	Mat img = imread("lena.jpg");
	if (img.empty()) {
		cout << "读取图像失败" << endl;
		return 0;
	}
	namedWindow("游戏原画", 0);
	imshow("游戏原画", img);
	waitKey(0);
	
	return 0;
}
