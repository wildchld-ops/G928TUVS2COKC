.class public Lcom/myscript/atk/styluscore/ParameterizedBrush;
.super Ljava/lang/Object;
.source "ParameterizedBrush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/styluscore/ParameterizedBrush$Smoothing;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ParameterizedBrush__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ParameterizedBrush;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Brush;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Brush;->getCPtr(Lcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ParameterizedBrush__SWIG_1(JLcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ParameterizedBrush;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ParameterizedBrush;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ParameterizedBrush__SWIG_2(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ParameterizedBrush;-><init>(JZ)V

    return-void
.end method

.method public static c_strSmoothing(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_c_strSmoothing(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ParameterizedBrush;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public brush()Lcom/myscript/atk/styluscore/Brush;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Brush;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_brush(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Brush;-><init>(JZ)V

    return-object v0
.end method

.method public color()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/Color;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_color(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    return-object v0
.end method

.method public configureBrush(IF)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_configureBrush__SWIG_0(JLcom/myscript/atk/styluscore/ParameterizedBrush;IF)V

    return-void
.end method

.method public configureBrush(Ljava/lang/String;F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_configureBrush__SWIG_1(JLcom/myscript/atk/styluscore/ParameterizedBrush;Ljava/lang/String;F)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ParameterizedBrush(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ParameterizedBrush;->delete()V

    return-void
.end method

.method public getHash()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_getHash(JLcom/myscript/atk/styluscore/ParameterizedBrush;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getSerializedParameterizedBrush()Lcom/myscript/atk/styluscore/VectorChar;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/VectorChar;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_getSerializedParameterizedBrush(JLcom/myscript/atk/styluscore/ParameterizedBrush;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/VectorChar;-><init>(JZ)V

    return-object v0
.end method

.method public setBrush(Lcom/myscript/atk/styluscore/Brush;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Brush;->getCPtr(Lcom/myscript/atk/styluscore/Brush;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_setBrush(JLcom/myscript/atk/styluscore/ParameterizedBrush;JLcom/myscript/atk/styluscore/Brush;)V

    return-void
.end method

.method public setBrushColor(Lcom/myscript/atk/styluscore/Color;)V
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_setBrushColor(JLcom/myscript/atk/styluscore/ParameterizedBrush;JLcom/myscript/atk/styluscore/Color;)V

    return-void
.end method

.method public setSerializedParametrizedBrush(Lcom/myscript/atk/styluscore/SWIGTYPE_p_std__istringstream;)V
    .locals 4

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_std__istringstream;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_std__istringstream;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_setSerializedParametrizedBrush(JLcom/myscript/atk/styluscore/ParameterizedBrush;J)V

    return-void
.end method

.method public setSmoothingType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_setSmoothingType(JLcom/myscript/atk/styluscore/ParameterizedBrush;I)V

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_setWidth(JLcom/myscript/atk/styluscore/ParameterizedBrush;F)V

    return-void
.end method

.method public smoothing()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_smoothing(JLcom/myscript/atk/styluscore/ParameterizedBrush;)I

    move-result v0

    return v0
.end method

.method public width()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ParameterizedBrush;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ParameterizedBrush_width(JLcom/myscript/atk/styluscore/ParameterizedBrush;)F

    move-result v0

    return v0
.end method
