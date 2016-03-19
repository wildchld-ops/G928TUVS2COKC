.class public Lcom/myscript/atk/styluscore/ConstraintInfo;
.super Ljava/lang/Object;
.source "ConstraintInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ConstraintInfo__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ConstraintInfo;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ConstraintInfo;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ConstraintInfo;->getCPtr(Lcom/myscript/atk/styluscore/ConstraintInfo;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ConstraintInfo__SWIG_1(JLcom/myscript/atk/styluscore/ConstraintInfo;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ConstraintInfo;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ConstraintInfo;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ConstraintInfo(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ConstraintInfo;->delete()V

    return-void
.end method

.method public getMApplied()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mApplied_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z

    move-result v0

    return v0
.end method

.method public getMExplicit()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mExplicit_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z

    move-result v0

    return v0
.end method

.method public getMID()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mID_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)I

    move-result v0

    return v0
.end method

.method public getMNew()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mNew_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z

    move-result v0

    return v0
.end method

.method public getMPartial()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mPartial_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)Z

    move-result v0

    return v0
.end method

.method public getMTimestamp()Lcom/myscript/atk/styluscore/VoTimeStamp;
    .locals 4

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mTimestamp_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/VoTimeStamp;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMType()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mType_get(JLcom/myscript/atk/styluscore/ConstraintInfo;)I

    move-result v0

    return v0
.end method

.method public setMApplied(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mApplied_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V

    return-void
.end method

.method public setMExplicit(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mExplicit_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V

    return-void
.end method

.method public setMID(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mID_set(JLcom/myscript/atk/styluscore/ConstraintInfo;I)V

    return-void
.end method

.method public setMNew(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mNew_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V

    return-void
.end method

.method public setMPartial(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mPartial_set(JLcom/myscript/atk/styluscore/ConstraintInfo;Z)V

    return-void
.end method

.method public setMTimestamp(Lcom/myscript/atk/styluscore/VoTimeStamp;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mTimestamp_set(JLcom/myscript/atk/styluscore/ConstraintInfo;JLcom/myscript/atk/styluscore/VoTimeStamp;)V

    return-void
.end method

.method public setMType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ConstraintInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ConstraintInfo_mType_set(JLcom/myscript/atk/styluscore/ConstraintInfo;I)V

    return-void
.end method
