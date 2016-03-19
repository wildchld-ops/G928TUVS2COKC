.class public Lcom/myscript/atk/styluscore/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Transform__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    invoke-static {p1, p2, p3, p4}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Transform__SWIG_1(FFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 3

    invoke-static/range {p1 .. p6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Transform__SWIG_2(FFFFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Transform;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Transform;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Transform__SWIG_3(JLcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Transform;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public applied(Lcom/myscript/atk/styluscore/Transform;)Lcom/myscript/atk/styluscore/Transform;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Transform;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Transform;->getCPtr(Lcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_applied(JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-object v6
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Transform(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Transform;->delete()V

    return-void
.end method

.method public getScaleRatio()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_getScaleRatio(JLcom/myscript/atk/styluscore/Transform;)F

    move-result v0

    return v0
.end method

.method public getXScale()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_getXScale(JLcom/myscript/atk/styluscore/Transform;)F

    move-result v0

    return v0
.end method

.method public getXShearing()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_getXShearing(JLcom/myscript/atk/styluscore/Transform;)F

    move-result v0

    return v0
.end method

.method public getXTranslation()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_getXTranslation(JLcom/myscript/atk/styluscore/Transform;)F

    move-result v0

    return v0
.end method

.method public getYScale()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_getYScale(JLcom/myscript/atk/styluscore/Transform;)F

    move-result v0

    return v0
.end method

.method public getYShearing()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_getYShearing(JLcom/myscript/atk/styluscore/Transform;)F

    move-result v0

    return v0
.end method

.method public getYTranslation()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_getYTranslation(JLcom/myscript/atk/styluscore/Transform;)F

    move-result v0

    return v0
.end method

.method public inverted()Lcom/myscript/atk/styluscore/Transform;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Transform;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_inverted(JLcom/myscript/atk/styluscore/Transform;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-object v0
.end method

.method public isIdentity()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_isIdentity(JLcom/myscript/atk/styluscore/Transform;)Z

    move-result v0

    return v0
.end method

.method public isInvertible()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_isInvertible(JLcom/myscript/atk/styluscore/Transform;)Z

    move-result v0

    return v0
.end method

.method public map(Lcom/myscript/atk/styluscore/Rect;)Lcom/myscript/atk/styluscore/Rect;
    .locals 7

    new-instance v6, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Rect;->getCPtr(Lcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_map(JLcom/myscript/atk/styluscore/Transform;JLcom/myscript/atk/styluscore/Rect;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v6
.end method

.method public rotate(F)Lcom/myscript/atk/styluscore/Transform;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Transform;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_rotate(JLcom/myscript/atk/styluscore/Transform;F)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-object v0
.end method

.method public scale(FF)Lcom/myscript/atk/styluscore/Transform;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Transform;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_scale(JLcom/myscript/atk/styluscore/Transform;FF)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-object v0
.end method

.method public setIdentity()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_setIdentity(JLcom/myscript/atk/styluscore/Transform;)V

    return-void
.end method

.method public shear(FF)Lcom/myscript/atk/styluscore/Transform;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Transform;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_shear(JLcom/myscript/atk/styluscore/Transform;FF)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-object v0
.end method

.method public translate(FF)Lcom/myscript/atk/styluscore/Transform;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Transform;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Transform;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Transform_translate(JLcom/myscript/atk/styluscore/Transform;FF)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Transform;-><init>(JZ)V

    return-object v0
.end method
