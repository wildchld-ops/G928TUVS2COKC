.class public Lcom/myscript/atk/styluscore/styluscore;
.super Ljava/lang/Object;
.source "styluscore.java"

# interfaces
.implements Lcom/myscript/atk/styluscore/styluscoreConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/myscript/atk/styluscore/Point;Lcom/myscript/atk/styluscore/Point;)Lcom/myscript/atk/styluscore/Point;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Point;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->add(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v6
.end method

.method public static getChar_ALM_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_ALM_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_FSI_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_FSI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRE_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRE_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRI_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRM_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRM_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRO_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRO_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_PDF_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_PDF_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_PDI_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_PDI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_PI_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_PI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLE_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLE_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLI_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLM_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLM_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLO_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLO_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_absoluteSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_absoluteSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_almostEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_almostEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_asymptoticallyEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_asymptoticallyEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_dblIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_dblIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_dblSurfIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_dblSurfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_degreeSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_degreeSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_divisionSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_divisionSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_divisionSlash_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_divisionSlash_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_fractionSlash_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_fractionSlash_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_greaterThanOrEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_greaterThanOrEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_hanOne_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_hanOne_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_horizontalEllipsis_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_horizontalEllipsis_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_identicalTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_identicalTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_integralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_integralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_leftRightDoubleArrow_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_leftRightDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_leftwardsDoubleArrow_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_leftwardsDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_lessThanOrEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_lessThanOrEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_muchGreaterThan_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_muchGreaterThan_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_muchLessThan_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_muchLessThan_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_multiplicationSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_multiplicationSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_notEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_notEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_notIdenticalTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_notIdenticalTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_parallelTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_parallelTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_phi_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_phi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_pi_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_pi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_replacementChar_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_replacementChar_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_rightwardsDoubleArrow_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_rightwardsDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_squareRoot_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_squareRoot_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_surfIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_surfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_tplIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_tplIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_tplSurfIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_tplSurfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_varphi_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_varphi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_vectorSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_vectorSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static logFmt(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->logFmt(ILjava/lang/String;)V

    return-void
.end method

.method public static minus(Lcom/myscript/atk/styluscore/Point;Lcom/myscript/atk/styluscore/Point;)Lcom/myscript/atk/styluscore/Point;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Point;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->minus(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v6
.end method

.method public static setItemInfoFunc(ILcom/myscript/atk/styluscore/Segment;Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;)Lcom/myscript/atk/styluscore/Segment;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Segment;

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Segment;->getCPtr(Lcom/myscript/atk/styluscore/Segment;)J

    move-result-wide v1

    invoke-static {p2}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;)J

    move-result-wide v4

    move v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->setItemInfoFunc(IJLcom/myscript/atk/styluscore/Segment;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Segment;-><init>(JZ)V

    return-object v6
.end method
