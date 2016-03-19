.class public Lcom/myscript/atk/styluscore/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Path__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Path;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Path;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Path__SWIG_1(JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Path;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addArrowHead(Lcom/myscript/atk/styluscore/Point;Lcom/myscript/atk/styluscore/Point;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_addArrowHead(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;)V

    return-void
.end method

.method public addSampledArc(Lcom/myscript/atk/styluscore/Point;FFFFFF)V
    .locals 12

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_addSampledArc__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;FFFFFF)V

    return-void
.end method

.method public addSampledArc(Lcom/myscript/atk/styluscore/Point;FFFFFI)V
    .locals 12

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_addSampledArc__SWIG_1(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;FFFFFI)V

    return-void
.end method

.method public addSampledLine(Lcom/myscript/atk/styluscore/Point;Lcom/myscript/atk/styluscore/Point;F)V
    .locals 10

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_addSampledLine__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;F)V

    return-void
.end method

.method public addSampledLine(Lcom/myscript/atk/styluscore/Point;Lcom/myscript/atk/styluscore/Point;I)V
    .locals 10

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_addSampledLine__SWIG_1(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;JLcom/myscript/atk/styluscore/Point;I)V

    return-void
.end method

.method public boundingRect()Lcom/myscript/atk/styluscore/Rect;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_boundingRect(JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_clear(JLcom/myscript/atk/styluscore/Path;)V

    return-void
.end method

.method public clipped(Lcom/myscript/atk/styluscore/Rect;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Path;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/myscript/atk/styluscore/ListPath;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_clipped(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListPath;-><init>(JZ)V

    return-object v6
.end method

.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_close(JLcom/myscript/atk/styluscore/Path;)V

    return-void
.end method

.method public closingLength()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_closingLength(JLcom/myscript/atk/styluscore/Path;)F

    move-result v0

    return v0
.end method

.method public convexHull()Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_convexHull(JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Path(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J
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

.method public elementAt(I)Lcom/myscript/atk/styluscore/Point;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Point;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_elementAt(JLcom/myscript/atk/styluscore/Path;I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v0
.end method

.method public elementCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_elementCount(JLcom/myscript/atk/styluscore/Path;)I

    move-result v0

    return v0
.end method

.method public elements(II[F[F)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_elements(JLcom/myscript/atk/styluscore/Path;II[F[F)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/myscript/atk/styluscore/Path;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/Path;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/Path;->nativeEquals(Lcom/myscript/atk/styluscore/Path;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Path;->delete()V

    return-void
.end method

.method public getCoarsePolyline(FFFI)Lcom/myscript/atk/styluscore/Path;
    .locals 8

    new-instance v7, Lcom/myscript/atk/styluscore/Path;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_getCoarsePolyline(JLcom/myscript/atk/styluscore/Path;FFFI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v7
.end method

.method public getFastPolylineOptimal(FF)Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_getFastPolylineOptimal(JLcom/myscript/atk/styluscore/Path;FF)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_hashCode(JLcom/myscript/atk/styluscore/Path;)I

    move-result v0

    return v0
.end method

.method public intersections(Lcom/myscript/atk/styluscore/Path;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myscript/atk/styluscore/Path;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Point;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/myscript/atk/styluscore/ListPoint;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_intersections(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/ListPoint;-><init>(JZ)V

    return-object v6
.end method

.method public intersects(Lcom/myscript/atk/styluscore/Rect;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_intersects(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Rect;)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_isClosed(JLcom/myscript/atk/styluscore/Path;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_isEmpty(JLcom/myscript/atk/styluscore/Path;)Z

    move-result v0

    return v0
.end method

.method public lastElement()Lcom/myscript/atk/styluscore/Point;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Point;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_lastElement(JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v0
.end method

.method public length()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_length(JLcom/myscript/atk/styluscore/Path;)F

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_lineTo__SWIG_1(JLcom/myscript/atk/styluscore/Path;FF)V

    return-void
.end method

.method public lineTo(Lcom/myscript/atk/styluscore/Point;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_lineTo__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;)V

    return-void
.end method

.method public minDistance(Lcom/myscript/atk/styluscore/Path;)F
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_minDistance(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)F

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Path;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_nativeEquals(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/Path;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_notEquals(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Path;)Z

    move-result v0

    return v0
.end method

.method public startAt(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_startAt__SWIG_1(JLcom/myscript/atk/styluscore/Path;FF)V

    return-void
.end method

.method public startAt(Lcom/myscript/atk/styluscore/Point;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_startAt__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;)V

    return-void
.end method

.method public stretch(F)Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_stretch(JLcom/myscript/atk/styluscore/Path;F)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public surrounds(Lcom/myscript/atk/styluscore/Point;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Path;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Path_surrounds(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/Point;)Z

    move-result v0

    return v0
.end method
