.class public Lcom/myscript/atk/styluscore/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Rect__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    invoke-static {p1, p2, p3, p4}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Rect__SWIG_1(FFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Rect;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Rect;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Rect__SWIG_2(JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Rect;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public adjusted(FFFF)Lcom/myscript/atk/styluscore/Rect;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_adjusted(JLcom/myscript/atk/styluscore/Rect;FFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v7
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_clear(JLcom/myscript/atk/styluscore/Rect;)V

    return-void
.end method

.method public contains(Lcom/myscript/atk/styluscore/Rect;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_contains(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Rect(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/myscript/atk/styluscore/Rect;

    if-eqz v0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/myscript/atk/styluscore/Rect;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/Rect;->nativeEquals(Lcom/myscript/atk/styluscore/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->delete()V

    return-void
.end method

.method public getBottom()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getBottom(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getHeight(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public getLeft()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getLeft(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public getRight()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getRight(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public getTop()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getTop(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getWidth(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getX(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_getY(JLcom/myscript/atk/styluscore/Rect;)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_hashCode(JLcom/myscript/atk/styluscore/Rect;)I

    move-result v0

    return v0
.end method

.method public intersected(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/Rect;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_intersected(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/myscript/atk/styluscore/Rect;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_intersects(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_isNull(JLcom/myscript/atk/styluscore/Rect;)Z

    move-result v0

    return v0
.end method

.method public moveBottom(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_moveBottom(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public moveLeft(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_moveLeft(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public moveRight(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_moveRight(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_moveTo(JLcom/myscript/atk/styluscore/Rect;FF)V

    return-void
.end method

.method public moveTop(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_moveTop(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Rect;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_nativeEquals(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/Rect;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_notEquals(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)Z

    move-result v0

    return v0
.end method

.method public setHeight(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_setHeight(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_setWidth(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public setX(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_setX(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public setY(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_setY(JLcom/myscript/atk/styluscore/Rect;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Rect;->getHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public translate(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_translate(JLcom/myscript/atk/styluscore/Rect;FF)V

    return-void
.end method

.method public united(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/Rect;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Rect;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Rect_united(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v6
.end method
