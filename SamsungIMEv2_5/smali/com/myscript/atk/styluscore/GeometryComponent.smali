.class public Lcom/myscript/atk/styluscore/GeometryComponent;
.super Lcom/myscript/atk/styluscore/Component;
.source "GeometryComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/GeometryComponent$BrushParameter;,
        Lcom/myscript/atk/styluscore/GeometryComponent$FloatParameter;,
        Lcom/myscript/atk/styluscore/GeometryComponent$BooleanParameter;,
        Lcom/myscript/atk/styluscore/GeometryComponent$ConstraintName;,
        Lcom/myscript/atk/styluscore/GeometryComponent$GeometryItemType;
    }
.end annotation


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryComponent__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryComponent;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/myscript/atk/styluscore/Component;-><init>(JZ)V

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/GeometryComponent;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/GeometryComponent;->getCPtr(Lcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_GeometryComponent__SWIG_1(JLcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/GeometryComponent;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/GeometryComponent;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addBrush(Lcom/myscript/atk/styluscore/Brush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Brush;->getCPtr(Lcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_addBrush(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Brush;)V

    return-void
.end method

.method public booleanValue(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_booleanValue(JLcom/myscript/atk/styluscore/GeometryComponent;I)Z

    move-result v0

    return v0
.end method

.method public brushValue(I)Lcom/myscript/atk/styluscore/ParameterizedBrush;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/ParameterizedBrush;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_brushValue(JLcom/myscript/atk/styluscore/GeometryComponent;I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;-><init>(JZ)V

    return-object v0
.end method

.method public canRedo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_canRedo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z

    move-result v0

    return v0
.end method

.method public canUndo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_canUndo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z

    move-result v0

    return v0
.end method

.method public clearPage()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_clearPage(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public clearUndoRedo()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_clearUndoRedo(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public closePage()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_closePage(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public constraintColorList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Color;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListColor;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_constraintColorList(JLcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListColor;-><init>(JZ)V

    return-object v0
.end method

.method public currentState()Lcom/myscript/atk/styluscore/Archive;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Archive;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_currentState(JLcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Archive;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_GeometryComponent(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/myscript/atk/styluscore/Component;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deselect()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_deselect(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public disableExplicitDetection(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_disableExplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public disableExplicitDisplay(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_disableExplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public disableImplicitDetection(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_disableImplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public disableImplicitDisplay(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_disableImplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public drawFrame()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_drawFrame(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public enableExplicitDetection(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_enableExplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public enableExplicitDisplay(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_enableExplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public enableImplicitDetection(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_enableImplicitDetection(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public enableImplicitDisplay(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_enableImplicitDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public explicitDetected()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_explicitDetected(JLcom/myscript/atk/styluscore/GeometryComponent;)I

    move-result v0

    return v0
.end method

.method public explicitDisplayed()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_explicitDisplayed(JLcom/myscript/atk/styluscore/GeometryComponent;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/GeometryComponent;->delete()V

    return-void
.end method

.method public floatValue(I)F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_floatValue(JLcom/myscript/atk/styluscore/GeometryComponent;I)F

    move-result v0

    return v0
.end method

.method public getBrushes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Brush;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/myscript/atk/styluscore/ListBrush;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getBrushes(JLcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ListBrush;-><init>(JZ)V

    return-object v0
.end method

.method public getCurrentTool()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getCurrentTool(JLcom/myscript/atk/styluscore/GeometryComponent;)I

    move-result v0

    return v0
.end method

.method public getItemInfo(J)Lcom/myscript/atk/styluscore/ItemInfo;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/ItemInfo;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getItemInfo(JLcom/myscript/atk/styluscore/GeometryComponent;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ItemInfo;-><init>(JZ)V

    return-object v0
.end method

.method public getItemLength(J)Lcom/myscript/atk/styluscore/ItemLength;
    .locals 5

    new-instance v0, Lcom/myscript/atk/styluscore/ItemLength;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getItemLength(JLcom/myscript/atk/styluscore/GeometryComponent;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/ItemLength;-><init>(JZ)V

    return-object v0
.end method

.method public getMMToPointValue()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getMMToPointValue(JLcom/myscript/atk/styluscore/GeometryComponent;)F

    move-result v0

    return v0
.end method

.method public getRectForInfoDisplay(JFF)Lcom/myscript/atk/styluscore/Rect;
    .locals 9

    new-instance v7, Lcom/myscript/atk/styluscore/Rect;

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getRectForInfoDisplay(JLcom/myscript/atk/styluscore/GeometryComponent;JFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/myscript/atk/styluscore/Rect;-><init>(JZ)V

    return-object v7
.end method

.method public getVisibleRectHeight()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getVisibleRectHeight(JLcom/myscript/atk/styluscore/GeometryComponent;)F

    move-result v0

    return v0
.end method

.method public getVisibleRectWidth()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getVisibleRectWidth(JLcom/myscript/atk/styluscore/GeometryComponent;)F

    move-result v0

    return v0
.end method

.method public getVisibleRectX()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getVisibleRectX(JLcom/myscript/atk/styluscore/GeometryComponent;)F

    move-result v0

    return v0
.end method

.method public getVisibleRectY()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_getVisibleRectY(JLcom/myscript/atk/styluscore/GeometryComponent;)F

    move-result v0

    return v0
.end method

.method public implicitDetected()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_implicitDetected(JLcom/myscript/atk/styluscore/GeometryComponent;)I

    move-result v0

    return v0
.end method

.method public implicitDisplayed()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_implicitDisplayed(JLcom/myscript/atk/styluscore/GeometryComponent;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_initialize(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public isBusy()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_isBusy(JLcom/myscript/atk/styluscore/GeometryComponent;)Z

    move-result v0

    return v0
.end method

.method public isSelected(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_isSelected(JLcom/myscript/atk/styluscore/GeometryComponent;J)Z

    move-result v0

    return v0
.end method

.method public penUp(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_penUp(JLcom/myscript/atk/styluscore/GeometryComponent;FF)V

    return-void
.end method

.method public penUpWithUserParams(FFLjava/lang/Object;Lcom/myscript/atk/styluscore/GeometryUserParamsListener;)V
    .locals 9

    invoke-static {p3}, Lcom/myscript/atk/styluscore/UserParamsGrefHelper;->addUserParams(Ljava/lang/Object;)I

    move-result v5

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p4}, Lcom/myscript/atk/styluscore/GeometryUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/GeometryUserParamsListener;)J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_penUpWithUserParams(JLcom/myscript/atk/styluscore/GeometryComponent;FFIJLcom/myscript/atk/styluscore/GeometryUserParamsListener;)V

    return-void
.end method

.method public redo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_redo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z

    move-result v0

    return v0
.end method

.method public saveCardToTemp()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_saveCardToTemp(JLcom/myscript/atk/styluscore/GeometryComponent;)Z

    move-result v0

    return v0
.end method

.method public saveStrokeAsITF(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_saveStrokeAsITF(JLcom/myscript/atk/styluscore/GeometryComponent;[B)V

    return-void
.end method

.method public select(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_select(JLcom/myscript/atk/styluscore/GeometryComponent;J)Z

    move-result v0

    return v0
.end method

.method public selectAll()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_selectAll(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/myscript/atk/styluscore/Color;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBackgroundColor(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Color;)V

    return-void
.end method

.method public setBackgroundImage(IILcom/myscript/atk/styluscore/SWIGTYPE_p_void;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p3}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_void;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBackgroundImage(JLcom/myscript/atk/styluscore/GeometryComponent;IIJ)V

    return-void
.end method

.method public setBestFit()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBestFit(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public setBooleanValue(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBooleanValue(JLcom/myscript/atk/styluscore/GeometryComponent;IZ)V

    return-void
.end method

.method public setBrushColor(Lcom/myscript/atk/styluscore/Color;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBrushColor(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Color;)V

    return-void
.end method

.method public setBrushDashed(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBrushDashed(JLcom/myscript/atk/styluscore/GeometryComponent;Z)V

    return-void
.end method

.method public setBrushValue(ILcom/myscript/atk/styluscore/ParameterizedBrush;)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p2}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBrushValue(JLcom/myscript/atk/styluscore/GeometryComponent;IJLcom/myscript/atk/styluscore/ParameterizedBrush;)V

    return-void
.end method

.method public setBrushWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setBrushWidth(JLcom/myscript/atk/styluscore/GeometryComponent;F)V

    return-void
.end method

.method public setConfig(Lcom/myscript/atk/styluscore/InputMethodConfig;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InputMethodConfig;->getCPtr(Lcom/myscript/atk/styluscore/InputMethodConfig;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setConfig(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/InputMethodConfig;)V

    return-void
.end method

.method public setConstraintColorList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/myscript/atk/styluscore/Color;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/myscript/atk/styluscore/ListColor;

    invoke-direct {v5, p1}, Lcom/myscript/atk/styluscore/ListColor;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/styluscore/Color;

    invoke-virtual {v5, v0}, Lcom/myscript/atk/styluscore/ListColor;->native_add(Lcom/myscript/atk/styluscore/Color;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v5}, Lcom/myscript/atk/styluscore/ListColor;->getCPtr(Lcom/myscript/atk/styluscore/ListColor;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setConstraintColorList(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/ListColor;)V

    return-void
.end method

.method public setContentOffset(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setContentOffset(JLcom/myscript/atk/styluscore/GeometryComponent;FF)V

    return-void
.end method

.method public setCurrentBrush(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setCurrentBrush__SWIG_0(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public setCurrentBrush(Lcom/myscript/atk/styluscore/Brush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Brush;->getCPtr(Lcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setCurrentBrush__SWIG_1(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Brush;)V

    return-void
.end method

.method public setCurrentSelectionMode(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setCurrentSelectionMode(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public setCurrentSelectionTool(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setCurrentSelectionTool(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public setCurrentTool(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setCurrentTool(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public setFitToHeight()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setFitToHeight(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public setFitToWidth()V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setFitToWidth(JLcom/myscript/atk/styluscore/GeometryComponent;)V

    return-void
.end method

.method public setFloatValue(IF)Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setFloatValue(JLcom/myscript/atk/styluscore/GeometryComponent;IF)Z

    move-result v0

    return v0
.end method

.method public setFrame(FFFF)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setFrame(JLcom/myscript/atk/styluscore/GeometryComponent;FFFF)V

    return-void
.end method

.method public setItemInfo(JLcom/myscript/atk/styluscore/ItemInfo;)Z
    .locals 9

    iget-wide v1, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p3}, Lcom/myscript/atk/styluscore/ItemInfo;->getCPtr(Lcom/myscript/atk/styluscore/ItemInfo;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setItemInfo(JLcom/myscript/atk/styluscore/GeometryComponent;JJLcom/myscript/atk/styluscore/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public setItemLength(JLcom/myscript/atk/styluscore/ItemLength;)Z
    .locals 9

    iget-wide v1, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p3}, Lcom/myscript/atk/styluscore/ItemLength;->getCPtr(Lcom/myscript/atk/styluscore/ItemLength;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setItemLength(JLcom/myscript/atk/styluscore/GeometryComponent;JJLcom/myscript/atk/styluscore/ItemLength;)Z

    move-result v0

    return v0
.end method

.method public setMMToPointValue(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setMMToPointValue(JLcom/myscript/atk/styluscore/GeometryComponent;F)V

    return-void
.end method

.method public setPage(Lcom/myscript/atk/styluscore/Page;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Page;->getCPtr(Lcom/myscript/atk/styluscore/Page;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setPage(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Page;)V

    return-void
.end method

.method public setSmoothingType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setSmoothingType(JLcom/myscript/atk/styluscore/GeometryComponent;I)V

    return-void
.end method

.method public setState(Lcom/myscript/atk/styluscore/Archive;Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)V
    .locals 9

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Archive;->getCPtr(Lcom/myscript/atk/styluscore/Archive;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/myscript/atk/styluscore/InkItemUserParamsListener;->getCPtr(Lcom/myscript/atk/styluscore/InkItemUserParamsListener;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_setState(JLcom/myscript/atk/styluscore/GeometryComponent;JLcom/myscript/atk/styluscore/Archive;JLcom/myscript/atk/styluscore/InkItemUserParamsListener;)V

    return-void
.end method

.method public sketchConfig()Lcom/myscript/atk/styluscore/InputMethodConfig;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/InputMethodConfig;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_sketchConfig(JLcom/myscript/atk/styluscore/GeometryComponent;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/InputMethodConfig;-><init>(JZ)V

    return-object v0
.end method

.method public undo()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_undo(JLcom/myscript/atk/styluscore/GeometryComponent;)Z

    move-result v0

    return v0
.end method

.method public valueRange(ILcom/myscript/atk/styluscore/SWIGTYPE_p_float;Lcom/myscript/atk/styluscore/SWIGTYPE_p_float;)V
    .locals 8

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {p2}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_float;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_float;)J

    move-result-wide v4

    invoke-static {p3}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_float;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_float;)J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_valueRange(JLcom/myscript/atk/styluscore/GeometryComponent;IJJ)V

    return-void
.end method

.method public zoom()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_zoom(JLcom/myscript/atk/styluscore/GeometryComponent;)F

    move-result v0

    return v0
.end method

.method public zoomAt(FFF)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_zoomAt(JLcom/myscript/atk/styluscore/GeometryComponent;FFF)V

    return-void
.end method

.method public zoomToRect(FFFF)V
    .locals 7

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/GeometryComponent;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/myscript/atk/styluscore/styluscoreJNI;->GeometryComponent_zoomToRect(JLcom/myscript/atk/styluscore/GeometryComponent;FFFF)V

    return-void
.end method
