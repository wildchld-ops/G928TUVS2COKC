.class public Lcom/myscript/atk/styluscore/GeometryComponentListener;
.super Lcom/myscript/atk/styluscore/ComponentListener;
.source "GeometryComponentListener.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryComponentListener__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryComponentListener;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponentListener_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/myscript/atk/styluscore/ComponentListener;-><init>(JZ)V

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/GeometryComponentListener;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/GeometryComponentListener;->getCPtr(Lcom/myscript/atk/styluscore/GeometryComponentListener;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryComponentListener__SWIG_1(JLcom/myscript/atk/styluscore/GeometryComponentListener;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryComponentListener;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/GeometryComponentListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_GeometryComponentListener(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/myscript/atk/styluscore/ComponentListener;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deselected(Lcom/myscript/atk/styluscore/GeometryComponent;JI)V
    .locals 10

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/GeometryComponent;->getCPtr(Lcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponentListener_deselected(JLcom/myscript/atk/styluscore/GeometryComponentListener;JLcom/myscript/atk/styluscore/GeometryComponent;JI)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/GeometryComponentListener;->delete()V

    return-void
.end method

.method public selected(Lcom/myscript/atk/styluscore/GeometryComponent;Lcom/myscript/atk/styluscore/Point;JI)V
    .locals 13

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponentListener;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/GeometryComponent;->getCPtr(Lcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/Point;->getCPtr(Lcom/myscript/atk/styluscore/Point;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-wide/from16 v9, p3

    move/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponentListener_selected(JLcom/myscript/atk/styluscore/GeometryComponentListener;JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Point;JI)V

    return-void
.end method
