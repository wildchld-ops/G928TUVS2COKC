.class public Lcom/myscript/atk/styluscore/ItemLength;
.super Ljava/lang/Object;
.source "ItemLength.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemLength__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemLength;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemLength__SWIG_1(F[B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemLength;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ItemLength;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemLength;->getCPtr(Lcom/myscript/atk/styluscore/ItemLength;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemLength__SWIG_2(JLcom/myscript/atk/styluscore/ItemLength;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemLength;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ItemLength;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ItemLength(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ItemLength;->delete()V

    return-void
.end method

.method public getUnitLabel()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemLength_getUnitLabel(JLcom/myscript/atk/styluscore/ItemLength;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getValue()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemLength_getValue(JLcom/myscript/atk/styluscore/ItemLength;)F

    move-result v0

    return v0
.end method

.method public valid()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemLength;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemLength_valid(JLcom/myscript/atk/styluscore/ItemLength;)Z

    move-result v0

    return v0
.end method
