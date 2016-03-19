.class public Lcom/myscript/atk/styluscore/GeometryRendererDelegate;
.super Lcom/myscript/atk/styluscore/ComponentRendererDelegate;
.source "GeometryRendererDelegate.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryRendererDelegate__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/myscript/atk/styluscore/ComponentRendererDelegate;-><init>(JZ)V

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/GeometryRendererDelegate;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->getCPtr(Lcom/myscript/atk/styluscore/GeometryRendererDelegate;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryRendererDelegate__SWIG_1(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/GeometryRendererDelegate;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public beginConstraintDraw(Lcom/myscript/atk/styluscore/ConstraintInfo;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ConstraintInfo;->getCPtr(Lcom/myscript/atk/styluscore/ConstraintInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_beginConstraintDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/ConstraintInfo;)V

    return-void
.end method

.method public beginLayerDraw(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_beginLayerDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;[B)V

    return-void
.end method

.method public beginModelDrawUpdate()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_beginModelDrawUpdate(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V

    return-void
.end method

.method public beginTemporaryDraw()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_beginTemporaryDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_GeometryRendererDelegate(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/myscript/atk/styluscore/ComponentRendererDelegate;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public drawArc(Lcom/myscript/atk/styluscore/ArcPrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ArcPrimitive;->getCPtr(Lcom/myscript/atk/styluscore/ArcPrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_drawArc(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/ArcPrimitive;J)V

    return-void
.end method

.method public drawCenter(Lcom/myscript/atk/styluscore/PointPrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/PointPrimitive;->getCPtr(Lcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_drawCenter(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V

    return-void
.end method

.method public drawLine(Lcom/myscript/atk/styluscore/LinePrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/LinePrimitive;->getCPtr(Lcom/myscript/atk/styluscore/LinePrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_drawLine(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/LinePrimitive;J)V

    return-void
.end method

.method public drawPendingStroke(Lcom/myscript/atk/styluscore/Stroke;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Stroke;->getCPtr(Lcom/myscript/atk/styluscore/Stroke;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_drawPendingStroke(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/Stroke;J)V

    return-void
.end method

.method public drawPoint(Lcom/myscript/atk/styluscore/PointPrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/PointPrimitive;->getCPtr(Lcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_drawPoint(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V

    return-void
.end method

.method public endConstraintDraw()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_endConstraintDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V

    return-void
.end method

.method public endLayerDraw(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_endLayerDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;[B)V

    return-void
.end method

.method public endModelDrawUpdate()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_endModelDrawUpdate(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V

    return-void
.end method

.method public endTemporaryDraw()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_endTemporaryDraw(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->delete()V

    return-void
.end method

.method public init()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_init(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_release(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/myscript/atk/styluscore/Color;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_setBackgroundColor(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/Color;)V

    return-void
.end method

.method public setBrush(Lcom/myscript/atk/styluscore/ParameterizedBrush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_setBrush(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V

    return-void
.end method

.method public setFrame(FFFF)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_setFrame(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;FFFF)V

    return-void
.end method

.method public setPageDimensions(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryRendererDelegate_setPageDimensions(JLcom/myscript/atk/styluscore/GeometryRendererDelegate;FF)V

    return-void
.end method
