.class public Lcom/myscript/atk/styluscore/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Tool;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Tool;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public configureRenderer()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_configureRenderer(JLcom/myscript/atk/styluscore/Tool;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Tool(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Tool;->delete()V

    return-void
.end method

.method public penAbort()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_penAbort(JLcom/myscript/atk/styluscore/Tool;)V

    return-void
.end method

.method public penDown(Lcom/myscript/atk/styluscore/pt3;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/pt3;->getCPtr(Lcom/myscript/atk/styluscore/pt3;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_penDown(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/pt3;)V

    return-void
.end method

.method public penMove(Lcom/myscript/atk/styluscore/pt3;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/pt3;->getCPtr(Lcom/myscript/atk/styluscore/pt3;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_penMove(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/pt3;)V

    return-void
.end method

.method public penUp(Lcom/myscript/atk/styluscore/pt3;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/pt3;->getCPtr(Lcom/myscript/atk/styluscore/pt3;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_penUp(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/pt3;)V

    return-void
.end method

.method public setColor(Lcom/myscript/atk/styluscore/Color;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_setColor(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/Color;)V

    return-void
.end method

.method public setPage(Lcom/myscript/atk/styluscore/Page;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Page;->getCPtr(Lcom/myscript/atk/styluscore/Page;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_setPage(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/Page;)V

    return-void
.end method

.method public setParameterizedBrush(Lcom/myscript/atk/styluscore/ParameterizedBrush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_setParameterizedBrush(JLcom/myscript/atk/styluscore/Tool;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V

    return-void
.end method

.method public setSmoothingType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_setSmoothingType(JLcom/myscript/atk/styluscore/Tool;I)V

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_setWidth(JLcom/myscript/atk/styluscore/Tool;F)V

    return-void
.end method

.method public type()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Tool;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Tool_type(JLcom/myscript/atk/styluscore/Tool;)I

    move-result v0

    return v0
.end method
