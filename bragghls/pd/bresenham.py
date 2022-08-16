from pprint import pprint

import matplotlib.pyplot as plt
import numpy as np


def bresenham(start, end):
    """
    Bresenham's Line Generation Algorithm
    https://www.youtube.com/watch?v=76gp2IAazV4
    """
    # step 1 get end-points of line
    (x0, y0) = start
    (x1, y1) = end

    # step 2 calculate difference
    dx = abs(x1 - x0)
    dy = abs(y1 - y0)
    m = dy / dx

    # step 3 perform test to check if pk < 0
    flag = True

    line_pixel = []
    line_pixel.append((x0, y0))

    step = 1
    if x0 > x1 or y0 > y1:
        step = -1

    mm = False
    if m < 1:
        x0, x1, y0, y1 = y0, y1, x0, x1
        dx = abs(x1 - x0)
        dy = abs(y1 - y0)
        mm = True

    p0 = 2 * dx - dy
    x = x0
    y = y0

    for i in range(abs(y1 - y0)):
        if flag:
            x_previous = x0
            p_previous = p0
            p = p0
            flag = False
        else:
            x_previous = x
            p_previous = p

        if p >= 0:
            x = x + step

        p = p_previous + 2 * dx - 2 * dy * (abs(x - x_previous))
        y = y + 1

        if mm:
            line_pixel.append((y, x))
        else:
            line_pixel.append((x, y))

    line_pixel = np.array(line_pixel)

    return line_pixel


from PIL import Image, ImageDraw, ImageFont




def draw_text(letter="M", xy=(5, -7), font=40, width=60, height=32, thresh=255):
    txt = Image.new("L", (width, height), (0,))

    fnt = ImageFont.truetype(
        "/home/mlevental/dev_projects/bragghls/bragghls/pd/Author-Light.ttf", font
    )
    d = ImageDraw.Draw(txt)
    d.text(xy, letter, font=fnt, fill=(255,), stroke_width=0)
    im = np.array(txt).astype(int)
    im[im < thresh] = 0
    plt.imshow(im)
    plt.show()
    x, y = np.array(im).nonzero()
    return x, y


if __name__ == "__main__":
    """
    SLR2 60 32
    SLR1 48 32
    SLR0 33 32
    """
    m_x, m_y = draw_text("M", (2, 5), width=32, height=60, thresh=240)
    a_x, a_y = draw_text("A", (5, 0), width=32, height=48, thresh=240)
    x_x, x_y = draw_text("X", width=32, height=33, thresh=240)
