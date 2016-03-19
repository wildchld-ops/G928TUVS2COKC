.class public Lcom/myscript/atk/styluscore/InkLayout;
.super Ljava/lang/Object;
.source "InkLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/InkLayout$Modifier;,
        Lcom/myscript/atk/styluscore/InkLayout$Order;,
        Lcom/myscript/atk/styluscore/InkLayout$Direction;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkLayout__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkLayout;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkLayout;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLayout;->getCPtr(Lcom/myscript/atk/styluscore/InkLayout;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkLayout__SWIG_1(JLcom/myscript/atk/styluscore/InkLayout;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkLayout;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkLayout;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    goto :goto_0
.end method

.method public static getDirectionFromLocale(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_getDirectionFromLocale([B)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ascenderShift()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_ascenderShift(JLcom/myscript/atk/styluscore/InkLayout;)F

    move-result v0

    return v0
.end method

.method public clearGuidelines()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_clearGuidelines(JLcom/myscript/atk/styluscore/InkLayout;)V

    return-void
.end method

.method public defaultDirection()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_defaultDirection(JLcom/myscript/atk/styluscore/InkLayout;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkLayout(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J
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

.method public descenderShift()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_descenderShift(JLcom/myscript/atk/styluscore/InkLayout;)F

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkLayout;->delete()V

    return-void
.end method

.method public getNearestGuideline(F)F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_getNearestGuideline(JLcom/myscript/atk/styluscore/InkLayout;F)F

    move-result v0

    return v0
.end method

.method public guidelineCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_guidelineCount(JLcom/myscript/atk/styluscore/InkLayout;)I

    move-result v0

    return v0
.end method

.method public guidelineGap()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_guidelineGap(JLcom/myscript/atk/styluscore/InkLayout;)F

    move-result v0

    return v0
.end method

.method public guidelinePos()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_guidelinePos(JLcom/myscript/atk/styluscore/InkLayout;)F

    move-result v0

    return v0
.end method

.method public midlineShift()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_midlineShift(JLcom/myscript/atk/styluscore/InkLayout;)F

    move-result v0

    return v0
.end method

.method public modifiers()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_modifiers(JLcom/myscript/atk/styluscore/InkLayout;)I

    move-result v0

    return v0
.end method

.method public setAscenderShift(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setAscenderShift(JLcom/myscript/atk/styluscore/InkLayout;F)V

    return-void
.end method

.method public setDefaultDirection(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setDefaultDirection(JLcom/myscript/atk/styluscore/InkLayout;I)V

    return-void
.end method

.method public setDescenderShift(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setDescenderShift(JLcom/myscript/atk/styluscore/InkLayout;F)V

    return-void
.end method

.method public setGuidelines(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setGuidelines__SWIG_2(JLcom/myscript/atk/styluscore/InkLayout;F)V

    return-void
.end method

.method public setGuidelines(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setGuidelines__SWIG_1(JLcom/myscript/atk/styluscore/InkLayout;FF)V

    return-void
.end method

.method public setGuidelines(FFI)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setGuidelines__SWIG_0(JLcom/myscript/atk/styluscore/InkLayout;FFI)V

    return-void
.end method

.method public setMidlineShift(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setMidlineShift(JLcom/myscript/atk/styluscore/InkLayout;F)V

    return-void
.end method

.method public setModifiers(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLayout;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLayout_setModifiers(JLcom/myscript/atk/styluscore/InkLayout;I)V

    return-void
.end method
