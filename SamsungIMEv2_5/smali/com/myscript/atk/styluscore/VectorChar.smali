.class public Lcom/myscript/atk/styluscore/VectorChar;
.super Ljava/lang/Object;
.source "VectorChar.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VectorChar__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VectorChar;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VectorChar__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VectorChar;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/VectorChar;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VectorChar;->getCPtr(Lcom/myscript/atk/styluscore/VectorChar;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VectorChar__SWIG_2(JLcom/myscript/atk/styluscore/VectorChar;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VectorChar;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/VectorChar;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public add(C)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_add(JLcom/myscript/atk/styluscore/VectorChar;C)V

    return-void
.end method

.method public capacity()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_capacity(JLcom/myscript/atk/styluscore/VectorChar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_clear(JLcom/myscript/atk/styluscore/VectorChar;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_VectorChar(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/VectorChar;->delete()V

    return-void
.end method

.method public get(I)C
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_get(JLcom/myscript/atk/styluscore/VectorChar;I)C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_isEmpty(JLcom/myscript/atk/styluscore/VectorChar;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_reserve(JLcom/myscript/atk/styluscore/VectorChar;J)V

    return-void
.end method

.method public set(IC)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_set(JLcom/myscript/atk/styluscore/VectorChar;IC)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VectorChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VectorChar_size(JLcom/myscript/atk/styluscore/VectorChar;)J

    move-result-wide v0

    return-wide v0
.end method
