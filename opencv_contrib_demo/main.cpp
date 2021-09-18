#include <iostream>
#include <fstream>
#include <opencv2/opencv.hpp>
#include <opencv2/ximgproc.hpp>

using namespace std;
using namespace cv;
using namespace cv::ximgproc;


int main()
{
    /******************* 参数 *******************/
    string srcImageFilename = "../src.jpg";
    string dstImageFilename = "../dst.jpg";
    String modelFilename = "../model.yml";
    bool showFlag = true;

    /******************* 读取图像 *******************/
    Mat srcImage = imread(srcImageFilename);
    if (srcImage.empty())
        cerr << "Read image Failed!" << endl;

    /******************* 边缘检测 *******************/
    Mat image, edge, dstImage;
    Mat orientation;
    Mat finalEdge;
    srcImage.convertTo(image, DataType<float>::type, 1 / 255.0);
    Ptr<StructuredEdgeDetection> pDollar = createStructuredEdgeDetection(modelFilename);
    pDollar->detectEdges(image, edge);
//    pDollar->computeOrientation(edge, orientation);
//    pDollar->edgesNms(edge.clone(), orientation, edge, 2, 0, 1, true);
    edge.convertTo(dstImage, DataType<uchar>::type, 255.0);
    threshold(dstImage.clone(), dstImage, 0, 255, THRESH_OTSU);

    /******************* 保存结果 *******************/
    imwrite(dstImageFilename, dstImage);
    if (showFlag) {
        namedWindow("srcImage", 0);
        namedWindow("dstImage", 0);
        imshow("srcImage", srcImage);
        imshow("dstImage", dstImage);
        waitKey();
    }

    return 0;
}