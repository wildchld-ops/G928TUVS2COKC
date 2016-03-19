.class public Lcom/myscript/atk/styluscore/Char;
.super Ljava/lang/Object;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/Char$SpacingPref;,
        Lcom/myscript/atk/styluscore/Char$GlyphForm;,
        Lcom/myscript/atk/styluscore/Char$Type;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Char__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Char__SWIG_2(C)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Char__SWIG_4(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Char__SWIG_5(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Char;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Char;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Char;->getCPtr(Lcom/myscript/atk/styluscore/Char;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Char__SWIG_6(JLcom/myscript/atk/styluscore/Char;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Char__SWIG_1(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Char__SWIG_3(S)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-void
.end method

.method public static fromUnicode(J)Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    invoke-static {p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_fromUnicode(J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public static getALM()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_ALM_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getAbsoluteValue()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_absoluteValue_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getAlmostEqualTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_almostEqualTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getAsymptoticallyEqualTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_asymptoticallyEqualTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Char;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    goto :goto_0
.end method

.method public static getDblIntegralSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_dblIntegralSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDblSurfIntegralSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_dblSurfIntegralSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDegreeSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_degreeSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDivisionSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_divisionSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDivisionSlash()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_divisionSlash_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getFSI()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_FSI_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getFractionSlash()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_fractionSlash_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGreaterThanOrEqualTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_greaterThanOrEqualTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getHanFirst()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_hanFirst_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getHorizontalEllipsis()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_horizontalEllipsis_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getIdenticalTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_identicalTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getIntegralSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_integralSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRE()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRE_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRI()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRI_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRM()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRM_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRO()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_LRO_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLeftRightDoubleArrow()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_leftRightDoubleArrow_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLeftwardsDoubleArrow()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_leftwardsDoubleArrow_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLessThanOrEqualTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_lessThanOrEqualTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMuchGreaterThan()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_muchGreaterThan_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMuchLessThan()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_muchLessThan_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMultiplicationSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_multiplicationSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getNotEqualTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_notEqualTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getNotIdenticalTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_notIdenticalTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPDF()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_PDF_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPDI()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_PDI_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPI()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_PI_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getParallelTo()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_parallelTo_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPhi()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_phi_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPi()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_pi_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLE()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLE_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLI()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLI_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLM()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLM_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLO()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_RLO_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getReplacementChar()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_replacementChar_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRightwardsDoubleArrow()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_rightwardsDoubleArrow_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getSquareRoot()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_squareRoot_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getSurfIntegralSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_surfIntegralSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getTplIntegralSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_tplIntegralSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getTplSurfIntegralSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_tplSurfIntegralSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getVarphi()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_varphi_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getVectorSign()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_vectorSign_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Char;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public byteCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_byteCount(JLcom/myscript/atk/styluscore/Char;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Char(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Char;->delete()V

    return-void
.end method

.method public has(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_has(JLcom/myscript/atk/styluscore/Char;I)Z

    move-result v0

    return v0
.end method

.method public hasAllForms()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_hasAllForms(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public hasOnlyOneForm()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_hasOnlyOneForm(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_is(JLcom/myscript/atk/styluscore/Char;I)Z

    move-result v0

    return v0
.end method

.method public isArabicDigit()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isArabicDigit(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isArabicLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isArabicLetter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isArabicPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isArabicPunctuation(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isCJCharacter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJKFullSizeCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isCJKFullSizeCharacter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJKPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isCJKPunctuation(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isChineseCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isChineseCharacter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isCircledCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isCircledCharacter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isClosingBracketSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isClosingBracketSymbol(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isCyrillicLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isCyrillicLetter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isDigit()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isDigit(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isEnglishCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isEnglishCharacter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isGreekLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isGreekLetter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isHebrewLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isHebrewLetter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isLatinLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isLatinLetter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isLatinPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isLatinPunctuation(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isMirroredSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isMirroredSymbol(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isNull(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isOpeningBracketSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isOpeningBracketSymbol(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isPairedBracketSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isPairedBracketSymbol(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isRightToLeftCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isRightToLeftCharacter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isSpacing()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isSpacing(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isStretchableHalfSizePunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isStretchableHalfSizePunctuation(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isStretchableHalfSizeSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isStretchableHalfSizeSymbol(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiDigit()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isThaiDigit(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isThaiLetter(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isThaiPunctuation(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public isUnsortedSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_isUnsortedSymbol(JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public nativeEquals(C)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_nativeEquals__SWIG_1(JLcom/myscript/atk/styluscore/Char;C)Z

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Char;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Char;->getCPtr(Lcom/myscript/atk/styluscore/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_nativeEquals__SWIG_0(JLcom/myscript/atk/styluscore/Char;JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public notEquals(C)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_notEquals__SWIG_1(JLcom/myscript/atk/styluscore/Char;C)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/Char;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Char;->getCPtr(Lcom/myscript/atk/styluscore/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_notEquals__SWIG_0(JLcom/myscript/atk/styluscore/Char;JLcom/myscript/atk/styluscore/Char;)Z

    move-result v0

    return v0
.end method

.method public prefers(IZ)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_prefers(JLcom/myscript/atk/styluscore/Char;IZ)Z

    move-result v0

    return v0
.end method

.method public toAlternateSized()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_toAlternateSized(JLcom/myscript/atk/styluscore/Char;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toLower()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_toLower(JLcom/myscript/atk/styluscore/Char;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toMirrored()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_toMirrored(JLcom/myscript/atk/styluscore/Char;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toUpper()Lcom/myscript/atk/styluscore/Char;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Char;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_toUpper(JLcom/myscript/atk/styluscore/Char;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Char;-><init>(JZ)V

    return-object v0
.end method

.method public unicode()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Char;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Char_unicode(JLcom/myscript/atk/styluscore/Char;)J

    move-result-wide v0

    return-wide v0
.end method
