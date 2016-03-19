.class public Lcom/myscript/atk/styluscore/DocumentListener;
.super Ljava/lang/Object;
.source "DocumentListener.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/DocumentListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_DocumentListener(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J
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

.method public documentPageNumberChanged(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DocumentListener_documentPageNumberChanged(JLcom/myscript/atk/styluscore/DocumentListener;IZ)V

    return-void
.end method

.method public documentPathChanged(Ljava/lang/String;Z)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DocumentListener_documentPathChanged(JLcom/myscript/atk/styluscore/DocumentListener;[BZ)V

    return-void
.end method

.method public documentSavedAsWithSuccess(Ljava/lang/String;Z)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DocumentListener_documentSavedAsWithSuccess(JLcom/myscript/atk/styluscore/DocumentListener;[BZ)V

    return-void
.end method

.method public documentSavedToTempWithSuccess(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DocumentListener_documentSavedToTempWithSuccess(JLcom/myscript/atk/styluscore/DocumentListener;Z)V

    return-void
.end method

.method public documentSavedWithSuccess(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/DocumentListener;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->DocumentListener_documentSavedWithSuccess(JLcom/myscript/atk/styluscore/DocumentListener;Z)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/DocumentListener;->delete()V

    return-void
.end method
