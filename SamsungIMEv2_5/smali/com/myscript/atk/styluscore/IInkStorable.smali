.class public Lcom/myscript/atk/styluscore/IInkStorable;
.super Ljava/lang/Object;
.source "IInkStorable.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/IInkStorable;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_IInkStorable(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/IInkStorable;->delete()V

    return-void
.end method

.method public path()Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IInkStorable_path__SWIG_1(JLcom/myscript/atk/styluscore/IInkStorable;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public path(I)Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IInkStorable_path__SWIG_0(JLcom/myscript/atk/styluscore/IInkStorable;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/IInkStorable;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->IInkStorable_type(JLcom/myscript/atk/styluscore/IInkStorable;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
