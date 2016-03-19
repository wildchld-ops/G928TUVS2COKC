.class public Lcom/myscript/atk/styluscore/PointPrimitive;
.super Lcom/myscript/atk/styluscore/IInkStorable;
.source "PointPrimitive.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(FF)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_PointPrimitive__SWIG_0(FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/PointPrimitive;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->PointPrimitive_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/myscript/atk/styluscore/IInkStorable;-><init>(JZ)V

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/PointPrimitive;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/PointPrimitive;->getCPtr(Lcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_PointPrimitive__SWIG_1(JLcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/PointPrimitive;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/PointPrimitive;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_PointPrimitive(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/myscript/atk/styluscore/IInkStorable;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/PointPrimitive;->delete()V

    return-void
.end method

.method public path()Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->PointPrimitive_path__SWIG_1(JLcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public path(I)Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->PointPrimitive_path__SWIG_0(JLcom/myscript/atk/styluscore/PointPrimitive;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public point()Lcom/myscript/atk/styluscore/Point;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Point;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/PointPrimitive;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->PointPrimitive_point(JLcom/myscript/atk/styluscore/PointPrimitive;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v0
.end method
