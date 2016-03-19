.class public Lcom/myscript/atk/styluscore/VectorByte;
.super Ljava/lang/Object;
.source "VectorByte.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VectorByte__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VectorByte;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VectorByte__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VectorByte;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/VectorByte;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VectorByte;->getCPtr(Lcom/myscript/atk/styluscore/VectorByte;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VectorByte__SWIG_2(JLcom/myscript/atk/styluscore/VectorByte;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VectorByte;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/VectorByte;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public add(S)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_add(JLcom/myscript/atk/styluscore/VectorByte;S)V

    return-void
.end method

.method public capacity()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_capacity(JLcom/myscript/atk/styluscore/VectorByte;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_clear(JLcom/myscript/atk/styluscore/VectorByte;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_VectorByte(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/VectorByte;->delete()V

    return-void
.end method

.method public get(I)S
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_get(JLcom/myscript/atk/styluscore/VectorByte;I)S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_isEmpty(JLcom/myscript/atk/styluscore/VectorByte;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_reserve(JLcom/myscript/atk/styluscore/VectorByte;J)V

    return-void
.end method

.method public set(IS)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_set(JLcom/myscript/atk/styluscore/VectorByte;IS)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorByte;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorByte_size(JLcom/myscript/atk/styluscore/VectorByte;)J

    move-result-wide v0

    return-wide v0
.end method
