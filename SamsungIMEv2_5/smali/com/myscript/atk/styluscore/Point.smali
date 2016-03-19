.class public Lcom/myscript/atk/styluscore/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Point__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Point__SWIG_1(FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Point;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Point;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Point__SWIG_2(JLcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Point;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    goto :goto_0
.end method

.method public static middle(Lcom/myscript/atk/styluscore/Point;Lcom/myscript/atk/styluscore/Point;)Lcom/myscript/atk/styluscore/Point;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Point;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_middle(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v6
.end method


# virtual methods
.method public addAffect(Lcom/myscript/atk/styluscore/Point;)Lcom/myscript/atk/styluscore/Point;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Point;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_addAffect(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v6
.end method

.method public almostEquals(Lcom/myscript/atk/styluscore/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_almostEquals__SWIG_1(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)Z

    move-result v0

    return v0
.end method

.method public almostEquals(Lcom/myscript/atk/styluscore/Point;F)Z
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_almostEquals__SWIG_0(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;F)Z

    move-result v0

    return v0
.end method

.method public angle()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_angle(JLcom/myscript/atk/styluscore/Point;)F

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_clear(JLcom/myscript/atk/styluscore/Point;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Point(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J
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

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/myscript/atk/styluscore/Point;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/Point;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/Point;->nativeEquals(Lcom/myscript/atk/styluscore/Point;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Point;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_hashCode(JLcom/myscript/atk/styluscore/Point;)I

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_isNull(JLcom/myscript/atk/styluscore/Point;)Z

    move-result v0

    return v0
.end method

.method public minusAffect(Lcom/myscript/atk/styluscore/Point;)Lcom/myscript/atk/styluscore/Point;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Point;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_minusAffect(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v6
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_nativeEquals(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)Z

    move-result v0

    return v0
.end method

.method public norm()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_norm(JLcom/myscript/atk/styluscore/Point;)F

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_notEquals(JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)Z

    move-result v0

    return v0
.end method

.method public rotated(F)Lcom/myscript/atk/styluscore/Point;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Point;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_rotated(JLcom/myscript/atk/styluscore/Point;F)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v0
.end method

.method public setX(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_setX(JLcom/myscript/atk/styluscore/Point;F)V

    return-void
.end method

.method public setY(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_setY(JLcom/myscript/atk/styluscore/Point;F)V

    return-void
.end method

.method public x()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_x(JLcom/myscript/atk/styluscore/Point;)F

    move-result v0

    return v0
.end method

.method public y()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Point;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Point_y(JLcom/myscript/atk/styluscore/Point;)F

    move-result v0

    return v0
.end method
