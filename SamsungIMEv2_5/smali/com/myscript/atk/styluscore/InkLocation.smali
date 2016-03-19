.class public Lcom/myscript/atk/styluscore/InkLocation;
.super Ljava/lang/Object;
.source "InkLocation.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkLocation__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkLocation;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkLocation__SWIG_1(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkLocation;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkLocation;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkLocation__SWIG_2(JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkLocation;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkLocation(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkLocation;->delete()V

    return-void
.end method

.method public isAt(Lcom/myscript/atk/styluscore/InkItem;I)Z
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_isAt(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkItem;I)Z

    move-result v0

    return v0
.end method

.method public isAtBeginningOfItem()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_isAtBeginningOfItem(JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public isAtEndOfItem()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_isAtEndOfItem(JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Lcom/myscript/atk/styluscore/InkLocation;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_isBefore(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public isInsideStroke()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_isInsideStroke(JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public item()Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_item(JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public location()Lcom/myscript/atk/styluscore/Point;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Point;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_location(JLcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/InkLocation;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_nativeEquals(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/InkLocation;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkLocation;->getCPtr(Lcom/myscript/atk/styluscore/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_notEquals(JLcom/myscript/atk/styluscore/InkLocation;JLcom/myscript/atk/styluscore/InkLocation;)Z

    move-result v0

    return v0
.end method

.method public point()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_point(JLcom/myscript/atk/styluscore/InkLocation;)I

    move-result v0

    return v0
.end method

.method public setAtBeginningOfStroke()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_setAtBeginningOfStroke(JLcom/myscript/atk/styluscore/InkLocation;)V

    return-void
.end method

.method public setAtEndOfStroke()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_setAtEndOfStroke(JLcom/myscript/atk/styluscore/InkLocation;)V

    return-void
.end method

.method public setInsideStrokeAtPoint(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkLocation;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkLocation_setInsideStrokeAtPoint(JLcom/myscript/atk/styluscore/InkLocation;I)Z

    move-result v0

    return v0
.end method
