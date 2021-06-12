import cv2 as cv
import numpy as np


def detect_edges(img, threshold1, threshold2):
    edges = cv.Canny(img, threshold1, threshold2)
    return edges


def get_contours(img):
    contours, hierarchy = cv.findContours(img, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_NONE)

    return contours


def convert_to_grayscale(img):
    return cv.cvtColor(img, cv.COLOR_BGR2GRAY)


def increase_contrast(img, contrast, brightness):
    alpha = contrast  # Contrast control (1.0-3.0)
    beta = brightness  # Brightness control (0-100)

    return cv.convertScaleAbs(img, alpha=alpha, beta=beta)


def dilate(img, iterations=1):
    kernel = np.ones((5, 5), np.uint8)
    return cv.dilate(img, kernel, iterations=iterations)


def blur(img):
    return cv.GaussianBlur(img, (7, 7), 1)

