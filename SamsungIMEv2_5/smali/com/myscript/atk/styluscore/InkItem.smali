.class public Lcom/myscript/atk/styluscore/InkItem;
.super Ljava/lang/Object;
.source "InkItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/InkItem$Type;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkItem__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItem;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkItem__SWIG_1(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-void
.end method

.method public static barycenter(Lcom/myscript/atk/styluscore/Path;)Lcom/myscript/atk/styluscore/Point;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Point;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_barycenter__SWIG_1(JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v0
.end method

.method public static boundingRect(Lcom/myscript/atk/styluscore/Path;)Lcom/myscript/atk/styluscore/Rect;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Rect;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_boundingRect__SWIG_2(JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public static boundingRect(Ljava/util/List;)Lcom/myscript/atk/styluscore/Rect;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/InkItem;",
            ">;)",
            "Lcom/myscript/atk/styluscore/Rect;"
        }
    .end annotation

    new-instance v1, Lcom/myscript/atk/styluscore/ListInkItem;

    invoke-direct {v1, p0}, Lcom/myscript/atk/styluscore/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {v1, v3}, Lcom/myscript/atk/styluscore/ListInkItem;->native_add(Lcom/myscript/atk/styluscore/InkItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/myscript/atk/styluscore/Rect;

    invoke-static {v1}, Lcom/myscript/atk/styluscore/ListInkItem;->getCPtr(Lcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_boundingRect__SWIG_1(JLcom/myscript/atk/styluscore/ListInkItem;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v3
.end method

.method public static createCharBox(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createCharBox__SWIG_1(JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createCharBox(Lcom/myscript/atk/styluscore/Rect;Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createCharBox__SWIG_0(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public static createFlowMarker(I)Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createFlowMarker__SWIG_1(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createFlowMarker(ILcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createFlowMarker__SWIG_0(IJLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createGuideBox(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createGuideBox__SWIG_1(JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createGuideBox(Lcom/myscript/atk/styluscore/Rect;Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createGuideBox__SWIG_0(JLcom/myscript/atk/styluscore/Rect;JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public static createStringHolder(J)Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createStringHolder__SWIG_1(J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createStringHolder(JLcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p2}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createStringHolder__SWIG_0(JJLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createStroke(Lcom/myscript/atk/styluscore/Path;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createStroke__SWIG_2(JLcom/myscript/atk/styluscore/Path;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v0
.end method

.method public static createStroke(Lcom/myscript/atk/styluscore/Path;Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createStroke__SWIG_1(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public static createStroke(Lcom/myscript/atk/styluscore/Path;Lcom/myscript/atk/styluscore/VoTimeStamp;Lcom/myscript/atk/styluscore/VoTimeStamp;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 10

    new-instance v9, Lcom/myscript/atk/styluscore/InkItem;

    invoke-static {p0}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_createStroke__SWIG_0(JLcom/myscript/atk/styluscore/Path;JLcom/myscript/atk/styluscore/VoTimeStamp;JLcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v9
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public barycenter()Lcom/myscript/atk/styluscore/Point;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Point;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_barycenter__SWIG_0(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Point;-><init>(JZ)V

    return-object v0
.end method

.method public boundingRect()Lcom/myscript/atk/styluscore/Rect;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_boundingRect__SWIG_0(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkItem(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J
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

.method public duration()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_duration(JLcom/myscript/atk/styluscore/InkItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/myscript/atk/styluscore/InkItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/myscript/atk/styluscore/InkItem;

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/InkItem;->nativeEquals(Lcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkItem;->delete()V

    return-void
.end method

.method public flowMarker()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_flowMarker(JLcom/myscript/atk/styluscore/InkItem;)I

    move-result v0

    return v0
.end method

.method public getUserParams()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_getUserParams(JLcom/myscript/atk/styluscore/InkItem;)I

    move-result v0

    invoke-static {v0}, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->getUserParams(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_hashCode(JLcom/myscript/atk/styluscore/InkItem;)I

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_is(JLcom/myscript/atk/styluscore/InkItem;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_isEmpty(JLcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isGreater(Lcom/myscript/atk/styluscore/InkItem;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_isGreater(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isGreaterOrEqual(Lcom/myscript/atk/styluscore/InkItem;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_isGreaterOrEqual(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isLower(Lcom/myscript/atk/styluscore/InkItem;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_isLower(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    return v0
.end method

.method public isLowerOrEqual(Lcom/myscript/atk/styluscore/InkItem;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_isLowerOrEqual(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_length(JLcom/myscript/atk/styluscore/InkItem;)I

    move-result v0

    return v0
.end method

.method public mapped(Lcom/myscript/atk/styluscore/Transform;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkItem;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_mapped(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/InkItem;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_nativeEquals(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/myscript/atk/styluscore/InkItem;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItem;->getCPtr(Lcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_notEquals(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItem;)Z

    move-result v0

    return v0
.end method

.method public path()Lcom/myscript/atk/styluscore/Path;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Path;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_path(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Path;-><init>(JZ)V

    return-object v0
.end method

.method public setDuration(J)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_setDuration(JLcom/myscript/atk/styluscore/InkItem;J)V

    return-void
.end method

.method public setPath(Lcom/myscript/atk/styluscore/Path;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Path;->getCPtr(Lcom/myscript/atk/styluscore/Path;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_setPath(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/Path;)V

    return-void
.end method

.method public setTimeStamp(Lcom/myscript/atk/styluscore/VoTimeStamp;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/VoTimeStamp;->getCPtr(Lcom/myscript/atk/styluscore/VoTimeStamp;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_setTimeStamp(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/VoTimeStamp;)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_setType(JLcom/myscript/atk/styluscore/InkItem;I)V

    return-void
.end method

.method public setUserParams(Ljava/lang/Object;Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)V
    .locals 7

    invoke-static {p1}, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->addUserParams(Ljava/lang/Object;)I

    move-result v3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v4

    move-object v2, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_setUserParams(JLcom/myscript/atk/styluscore/InkItem;IJLcom/myscript/atk/styluscore/InkItemUserParamsListener;)V

    return-void
.end method

.method public simplified(Lcom/myscript/atk/styluscore/IntegerRange;)Lcom/myscript/atk/styluscore/InkItem;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/InkItem;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/IntegerRange;->getCPtr(Lcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_simplified(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/IntegerRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItem;-><init>(JZ)V

    return-object v6
.end method

.method public timeStamp()Lcom/myscript/atk/styluscore/VoTimeStamp;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VoTimeStamp;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_timeStamp(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method

.method public timeStampAt(I)Lcom/myscript/atk/styluscore/VoTimeStamp;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VoTimeStamp;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_timeStampAt(JLcom/myscript/atk/styluscore/InkItem;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VoTimeStamp;-><init>(JZ)V

    return-object v0
.end method

.method public type()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_type(JLcom/myscript/atk/styluscore/InkItem;)I

    move-result v0

    return v0
.end method

.method public updateUserParametersListener(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_updateUserParametersListener(JLcom/myscript/atk/styluscore/InkItem;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)Z

    move-result v0

    return v0
.end method

.method public userParamsListener()Lcom/myscript/atk/styluscore/InkItemUserParamsListener;
    .locals 4

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/InkItem;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItem_userParamsListener(JLcom/myscript/atk/styluscore/InkItem;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;-><init>(JZ)V

    goto :goto_0
.end method
