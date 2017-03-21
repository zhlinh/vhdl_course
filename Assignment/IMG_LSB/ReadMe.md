# Final Exam Assignment

Image LSB Embedding and Detection

Requirements: use VHDL language to design an image processing system that can perform the following functions:

1. Embedding Function: transform a color image into a 256x256 8-bit grayscale image, then embedded in three different random binary sequence in the face of the LSB bit grayscale images, and finally, restorate the gray image with embedded watermark sequence as a color image.

2. Detection Function: any inputted color image can be detected the above three sequences from the corresponding grayscale images LSB plane.

3. The three sequences:

    - Sequence 1: 01101

    - Sequence 2: 10101

    - Sequence 3: 11001

4. Input ports include three-coordinate value signal, respectively, as the starting position of the three sequences embedded

5. Establish sequence detection state machine that implements the image detection of the three sequences.

Note:

* Embedding is an alternative image with the specified sequence in the original bit sequence.

* LSB plane means the least significant bit of each pixel 8bit gray image composed of binary matrix.
