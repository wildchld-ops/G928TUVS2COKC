.class public Lcom/myscript/atk/styluscore/GeometryUserParams;
.super Ljava/lang/Object;
.source "GeometryUserParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/GeometryUserParams$ItemType;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryUserParams__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryUserParams;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/GeometryUserParams;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/GeometryUserParams;->getCPtr(Lcom/myscript/atk/styluscore/GeometryUserParams;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryUserParams__SWIG_3(JLcom/myscript/atk/styluscore/GeometryUserParams;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryUserParams;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/GeometryUserParams;J)V
    .locals 4

    invoke-static {p1}, Lcom/myscript/atk/styluscore/GeometryUserParams;->getCPtr(Lcom/myscript/atk/styluscore/GeometryUserParams;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryUserParams__SWIG_2(JLcom/myscript/atk/styluscore/GeometryUserParams;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryUserParams;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ParameterizedBrush;J)V
    .locals 4

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryUserParams__SWIG_1(JLcom/myscript/atk/styluscore/ParameterizedBrush;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryUserParams;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/GeometryUserParams;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public associateToItemID(J)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_associateToItemID(JLcom/myscript/atk/styluscore/GeometryUserParams;J)V

    return-void
.end method

.method public associatedCount()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_associatedCount(JLcom/myscript/atk/styluscore/GeometryUserParams;)I

    move-result v0

    return v0
.end method

.method public clearAssociated()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_clearAssociated(JLcom/myscript/atk/styluscore/GeometryUserParams;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_GeometryUserParams(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/GeometryUserParams;->delete()V

    return-void
.end method

.method public getAssociated()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListLong;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_getAssociated(JLcom/myscript/atk/styluscore/GeometryUserParams;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListLong;-><init>(JZ)V

    return-object v0
.end method

.method public getBrush()Lcom/myscript/atk/styluscore/ParameterizedBrush;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/ParameterizedBrush;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_getBrush(JLcom/myscript/atk/styluscore/GeometryUserParams;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;-><init>(JZ)V

    return-object v0
.end method

.method public getItemID()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_getItemID(JLcom/myscript/atk/styluscore/GeometryUserParams;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSplited()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_getSplited(JLcom/myscript/atk/styluscore/GeometryUserParams;)Z

    move-result v0

    return v0
.end method

.method public setBrush(Lcom/myscript/atk/styluscore/ParameterizedBrush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_setBrush(JLcom/myscript/atk/styluscore/GeometryUserParams;JLcom/myscript/atk/styluscore/ParameterizedBrush;)V

    return-void
.end method

.method public setSplited(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_setSplited(JLcom/myscript/atk/styluscore/GeometryUserParams;Z)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_setType(JLcom/myscript/atk/styluscore/GeometryUserParams;I)V

    return-void
.end method

.method public type()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryUserParams_type(JLcom/myscript/atk/styluscore/GeometryUserParams;)I

    move-result v0

    return v0
.end method
