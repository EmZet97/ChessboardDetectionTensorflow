import cv2 as cv


def load_camera_frame(camera_id):
    id = camera_id
    cap = cv.VideoCapture(id)

    while True:
        if camera_id != id:
            id = camera_id
            cap = cv.VideoCapture(id)

        ret, frame = cap.read()
        yield frame


def load_image(image_src):
    src = image_src
    image = cv.imread(image_src)

    while True:
        if src != image_src:
            src = image_src
            image = cv.imread(image_src)

        yield image
