.class public Lcom/myscript/atk/styluscore/Brush;
.super Ljava/lang/Object;
.source "Brush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/Brush$Style;,
        Lcom/myscript/atk/styluscore/Brush$BrushType;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Brush__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Brush;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Brush;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Brush;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Brush;->getCPtr(Lcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Brush__SWIG_1(JLcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Brush;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Brush;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public configure(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_configure__SWIG_1(JLcom/myscript/atk/styluscore/Brush;I)V

    return-void
.end method

.method public configure(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_configure__SWIG_0(JLcom/myscript/atk/styluscore/Brush;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Brush(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Brush;->delete()V

    return-void
.end method

.method public getBrushDescription()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getBrushDescription(JLcom/myscript/atk/styluscore/Brush;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getBrushType()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getBrushType(JLcom/myscript/atk/styluscore/Brush;)I

    move-result v0

    return v0
.end method

.method public getSaturationMultiplier()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getSaturationMultiplier(JLcom/myscript/atk/styluscore/Brush;)F

    move-result v0

    return v0
.end method

.method public getSerializedBrush()Lcom/myscript/atk/styluscore/VectorChar;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VectorChar;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getSerializedBrush(JLcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VectorChar;-><init>(JZ)V

    return-object v0
.end method

.method public getStyle()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getStyle(JLcom/myscript/atk/styluscore/Brush;)I

    move-result v0

    return v0
.end method

.method public getTextureName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getTextureName(JLcom/myscript/atk/styluscore/Brush;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextureSize()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getTextureSize(JLcom/myscript/atk/styluscore/Brush;)I

    move-result v0

    return v0
.end method

.method public getWidthMultiplier()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getWidthMultiplier(JLcom/myscript/atk/styluscore/Brush;)F

    move-result v0

    return v0
.end method

.method public getZoomMultiplier()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_getZoomMultiplier(JLcom/myscript/atk/styluscore/Brush;)F

    move-result v0

    return v0
.end method

.method public setBrushType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setBrushType(JLcom/myscript/atk/styluscore/Brush;I)V

    return-void
.end method

.method public setSaturationMultiplier(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setSaturationMultiplier(JLcom/myscript/atk/styluscore/Brush;F)V

    return-void
.end method

.method public setSerializedBrush(Lcom/myscript/atk/styluscore/SWIGTYPE_p_std__istringstream;)V
    .locals 4

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_std__istringstream;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_std__istringstream;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setSerializedBrush(JLcom/myscript/atk/styluscore/Brush;J)V

    return-void
.end method

.method public setStyle(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setStyle(JLcom/myscript/atk/styluscore/Brush;I)V

    return-void
.end method

.method public setTextureName(Ljava/lang/String;)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setTextureName(JLcom/myscript/atk/styluscore/Brush;[B)V

    return-void
.end method

.method public setTextureSize(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setTextureSize(JLcom/myscript/atk/styluscore/Brush;I)V

    return-void
.end method

.method public setWidthMultiplier(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setWidthMultiplier(JLcom/myscript/atk/styluscore/Brush;F)V

    return-void
.end method

.method public setZoomMultiplier(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Brush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Brush_setZoomMultiplier(JLcom/myscript/atk/styluscore/Brush;F)V

    return-void
.end method
