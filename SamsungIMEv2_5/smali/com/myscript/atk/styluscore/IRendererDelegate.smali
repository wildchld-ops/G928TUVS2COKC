.class public Lcom/myscript/atk/styluscore/IRendererDelegate;
.super Ljava/lang/Object;
.source "IRendererDelegate.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_IRendererDelegate__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/IRendererDelegate;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/IRendererDelegate;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IRendererDelegate;->getCPtr(Lcom/myscript/atk/styluscore/IRendererDelegate;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_IRendererDelegate__SWIG_1(JLcom/myscript/atk/styluscore/IRendererDelegate;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/IRendererDelegate;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/IRendererDelegate;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public beginItemID(JLcom/myscript/atk/styluscore/SWIGTYPE_p_void;)V
    .locals 9

    iget-wide v1, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p3}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    invoke-static/range {v1 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_beginItemID(JLcom/myscript/atk/styluscore/IRendererDelegate;JJ)V

    return-void
.end method

.method public beginLayerDraw(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_beginLayerDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;[B)V

    return-void
.end method

.method public beginModelDrawUpdate()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_beginModelDrawUpdate(JLcom/myscript/atk/styluscore/IRendererDelegate;)V

    return-void
.end method

.method public beginTemporaryDraw()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_beginTemporaryDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_IRendererDelegate(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J
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

.method public drawArc(Lcom/myscript/atk/styluscore/ArcPrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ArcPrimitive;->getCPtr(Lcom/myscript/atk/styluscore/ArcPrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_drawArc(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/ArcPrimitive;J)V

    return-void
.end method

.method public drawCenter(Lcom/myscript/atk/styluscore/PointPrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/PointPrimitive;->getCPtr(Lcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_drawCenter(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V

    return-void
.end method

.method public drawLine(Lcom/myscript/atk/styluscore/LinePrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/LinePrimitive;->getCPtr(Lcom/myscript/atk/styluscore/LinePrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_drawLine(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/LinePrimitive;J)V

    return-void
.end method

.method public drawPendingStroke(Lcom/myscript/atk/styluscore/Stroke;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Stroke;->getCPtr(Lcom/myscript/atk/styluscore/Stroke;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_drawPendingStroke(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/Stroke;J)V

    return-void
.end method

.method public drawPoint(Lcom/myscript/atk/styluscore/PointPrimitive;J)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/PointPrimitive;->getCPtr(Lcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_drawPoint(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/PointPrimitive;J)V

    return-void
.end method

.method public endItemID(JLcom/myscript/atk/styluscore/SWIGTYPE_p_void;)V
    .locals 9

    iget-wide v1, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p3}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    invoke-static/range {v1 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_endItemID(JLcom/myscript/atk/styluscore/IRendererDelegate;JJ)V

    return-void
.end method

.method public endLayerDraw(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_endLayerDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;[B)V

    return-void
.end method

.method public endModelDrawUpdate()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_endModelDrawUpdate(JLcom/myscript/atk/styluscore/IRendererDelegate;)V

    return-void
.end method

.method public endTemporaryDraw()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_endTemporaryDraw(JLcom/myscript/atk/styluscore/IRendererDelegate;)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/IRendererDelegate;->delete()V

    return-void
.end method

.method public init()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_init(JLcom/myscript/atk/styluscore/IRendererDelegate;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_release(JLcom/myscript/atk/styluscore/IRendererDelegate;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/myscript/atk/styluscore/Color;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_setBackgroundColor(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/Color;)V

    return-void
.end method

.method public setBrush(Lcom/myscript/atk/styluscore/ParameterizedBrush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_setBrush(JLcom/myscript/atk/styluscore/IRendererDelegate;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V

    return-void
.end method

.method public setFrame(FFFF)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_setFrame(JLcom/myscript/atk/styluscore/IRendererDelegate;FFFF)V

    return-void
.end method

.method public setPageDimensions(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IRendererDelegate;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IRendererDelegate_setPageDimensions(JLcom/myscript/atk/styluscore/IRendererDelegate;FF)V

    return-void
.end method
