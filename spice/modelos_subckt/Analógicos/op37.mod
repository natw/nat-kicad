* OP-37 SPICE Macro-model                   1/90, Rev. A
*                                           ARG / PMI
*
* Copyright 1990 by Analog Devices, Inc.
*
* The information on this diskette is protected under the
* United States copyright laws.  Analog Devices, Inc.("ADI")
* hereby grants users of these macro-models hereto referred
* to as licensee, a nonexclusive, nontransferable license to
* use these macro-models as long as the licensee abides by
* the terms of this agreement.  Before using the macro-
* models the licensee should read this license.  If the
* licensee does not accept these terms, this diskette should
* be returned to ADI within 30 days.
*
* The licensee may not sell, load, rent, lease, or license
* the macro-models, in whole, in part, or in modified form,
* to anyone outside the licensee's company.  The licensee
* may modify these macro-models to suit his specific
* applications, and the licensee may make copies of this 
* diskette or macromodels for use within his company only.
*
* These macro-models are provided "AS IS, WHERE IS, AND WITH
* NO WARRANTY OF ANY KIND EITHER EXPRESSED OR IMPLIED, 
* INCLUDING BUT NOT LIMITED TO ANY IMPLIED WARRANTIES OF
* MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE."
* In no event will ADI be liable for special, collateral,
* incidental, or consequential damages in connection with or
* arising out of the use of these macro-models.  ADI
* reserves the right to make changes to the products and the
* macro-models without prior notice.
*
*
* Node assignments
*              non-inverting input
*              |  inverting input
*              |  |  positive supply
*              |  |  |  negative supply
*              |  |  |  |  output
*              |  |  |  |  |
.SUBCKT OP-37  1  2  99 50 49
*
* INPUT STAGE & POLE AT 100MHZ
*
R3   5  97    0.0516
R4   6  97    0.0516
CIN  1   2    4E-12
C2   5   6    15.42E-9
I1   4  51    1
IOS  1   2    3.5E-9
EOS  7   3    POLY(1)  30 43  10E-6  1
Q1   5  2  4  QX
Q2   6  7  4  QX
D1   2   1    DX
D2   1   2    DX
EN   3   1    9   0  1
GN1  0   2    12  0  1
GN2  0   1    15  0  1
EREF  98 0    43  0  1
EPLUS 97 0    99  0  1
ENEG  51 0    50  0  1 
*
* VOLTAGE NOISE SOURCE WITH FLICKER NOISE
*
DN1  8   9    DEN
DN2  9   10   DEN
VN1  8   0    DC 2
VN2  0   10   DC 2
*
* CURRENT NOISE SOURCE WITH FLICKER NOISE
*
DN3  11  12   DIN
DN4  12  13   DIN
VN3  11   0   DC 2
VN4  0   13   DC 2
*
* SECOND CURRENT NOISE SOURCE
*
DN5  14  15   DIN
DN6  15  16   DIN
VN5  14   0   DC 2
VN6  0   16   DC 2
*
* 1ST GAIN STAGE
*
R5   17 98    1
G1A  98 17    5  6  63.87
D3   17 18    DX
D4   19 17    DX
E1   97 18    POLY(1) 97 43 -2.14 1
E2   19 51    POLY(1) 43 51 -2.14 1
*
* 2ND GAIN STAGE & DOMINANT POLE AT 32HZ
*
R6   20 98     84.55E3
C3   20 98     58.82E-9
G1B  98 20     17 43  333.3E-3
V1   97 21     1.62
V2   22 51     1.62
D5   20 21     DX
D6   22 20     DX
*
* POLE - ZERO AT .4MHZ / 1.0MHZ
*
R8   23 98     1
R9   23 24     0.667
C4   24 98     238.7E-9
G2   98 23     20 43  1
*
* ZERO - POLE AT 10MHZ / 100MHZ
*
R10  25 26     1
R11  26 98     9
L1   26 98     14.32E-9
G3   98 25     23 43  1
*
* POLE AT 100MHZ
*
R12  27 98     1
C5   27 98     1.59E-9
G4   98 27     25 43  1
*
* POLE AT 100MHZ
*
R13  28 98     1
C6   28 98     1.59E-9
G5   98 28     27 43  1
*
* POLE AT 100MHZ
*
R14  29 98     1
C7   29 98     1.59E-9
G6   98 29     28 43  1
*
* COMMON-MODE GAIN NETWORK WITH ZERO AT 7KHZ
*
R15  30 31     1
L2   31 98     22.7E-6
G7   98 30     POLY(2) 1  43  2  43  0  250.5E-9  250.5E-9
D7   30 97     DX
D8   51 30     DX
*
* POLE AT 100MHZ
*
R16  32 98     1
C8   32 98     1.59E-9
G8   98 32     29 43  1
*
* POLE AT 100MHZ
*
R17  33 98     1
C9   33 98     1.59E-9
G9   98 33     32 43  1
*
* POLE AT 200MHZ
*
R18  34 98     1
C10  34 98     .796E-9
G10  98 34     33 43  1
*
* OUTPUT STAGE
*
F1   44 0      V3 1
F2   0  44     V4 1
R27  43 97     1
R28  43 51     1
GSY  99 50     POLY(1) 99 50 1.7E-3 45E-6
R29  44 99     140
R30  44 50     140
L4   44 49     1E-7
G11  47 50     34 44  7.14E-3
G12  48 50     44 34  7.14E-3
G13  44 99     99 34  7.14E-3
G14  50 44     34 50  7.14E-3
V3   45 44     1.2
V4   44 46     1.55
D9   34 45     DX
D10  46 34     DX
D11  99 47     DX
D12  99 48     DX
D13  50 47     DY
D14  50 48     DY
*
* MODELS USED
*
.MODEL QX NPN(BF=50E6)
.MODEL DX   D(IS=1E-15)
.MODEL DY   D(IS=1E-15 BV=50)
.MODEL DEN  D(IS=1E-12, RS=1.09K, KF=1.08E-16, AF=1)
.MODEL DIN  D(IS=1E-12, RS=19.3E-6, KF=4.28E-15, AF=1)
.ENDS OP-37
