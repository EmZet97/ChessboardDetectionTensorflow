import cv2 as cv

import Helpers.ImageDetection as detector

import Helpers.ImageProcessing as helpers
import Helpers.ResourceLoader as resources


for image in resources.load_camera_frame(2):
    det_image = detector.label_image(image)

    # Display the resulting frame windows
    #cv.imshow('frame', image)
    cv.imshow('Chessboard detection', det_image)

    if cv.waitKey(1) & 0xFF == ord('q'):
        break

# When everything done, release the capture
cv.destroyAllWindows()