.class public Lcom/myscript/atk/styluscore/VoTimeStamp;
.super Ljava/lang/Object;
.source "VoTimeStamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/VoTimeStamp$Type;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoTimeStamp__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoTimeStamp__SWIG_0(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoTimeStamp__SWIG_2(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/VoTimeStamp;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_VoTimeStamp__SWIG_3(JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_VoTimeStamp(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J
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

.method public elapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_elapsed__SWIG_1(JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsed(I)J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_elapsed__SWIG_0(JLcom/myscript/atk/styluscore/VoTimeStamp;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/myscript/atk/styluscore/VoTimeStamp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/VoTimeStamp;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->nativeEquals(Lcom/myscript/atk/styluscore/VoTimeStamp;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/VoTimeStamp;->delete()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_hashCode(JLcom/myscript/atk/styluscore/VoTimeStamp;)I

    move-result v0

    return v0
.end method

.method public isGreater(Lcom/myscript/atk/styluscore/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_isGreater(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isGreaterOrEqual(Lcom/myscript/atk/styluscore/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_isGreaterOrEqual(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isLower(Lcom/myscript/atk/styluscore/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_isLower(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public isLowerOrEqual(Lcom/myscript/atk/styluscore/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_isLowerOrEqual(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public milliseconds()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_milliseconds(JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public millisecondsTo(Lcom/myscript/atk/styluscore/VoTimeStamp;)J
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_millisecondsTo(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_nativeEquals(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/VoTimeStamp;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_notEquals(JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)Z

    move-result v0

    return v0
.end method

.method public shifted(J)Lcom/myscript/atk/styluscore/VoTimeStamp;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/VoTimeStamp;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/VoTimeStamp;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->VoTimeStamp_shifted(JLcom/myscript/atk/styluscore/VoTimeStamp;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/myscript/atk/styluscore/InkDebug;->elapsed(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
