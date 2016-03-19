.class public Lcom/myscript/atk/styluscore/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Color__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Color__SWIG_2(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/Color;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/Color;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Color__SWIG_3(JLcom/myscript/atk/styluscore/Color;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;)V
    .locals 8

    invoke-static {p1}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;)J

    move-result-wide v4

    invoke-static {p4}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;->getCPtr(Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;)J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_Color__SWIG_1(JJJJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    return-void
.end method

.method public static getBlack()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Black_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getBlue()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Blue_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/Color;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    goto :goto_0
.end method

.method public static getGreen()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Green_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getOrange()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Orange_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPink()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Pink_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPurple()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Purple_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRed()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Red_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getTransparentBlack()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_TransparentBlack_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getWhite()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_White_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getYellow()Lcom/myscript/atk/styluscore/Color;
    .locals 4

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_Yellow_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/myscript/atk/styluscore/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/myscript/atk/styluscore/Color;-><init>(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public alpha()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_alpha(JLcom/myscript/atk/styluscore/Color;)F

    move-result v0

    return v0
.end method

.method public alphaComponent()Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_alphaComponent(JLcom/myscript/atk/styluscore/Color;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;-><init>(JZ)V

    return-object v0
.end method

.method public blue()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_blue(JLcom/myscript/atk/styluscore/Color;)F

    move-result v0

    return v0
.end method

.method public blueComponent()Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_blueComponent(JLcom/myscript/atk/styluscore/Color;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_Color(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/Color;->delete()V

    return-void
.end method

.method public green()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_green(JLcom/myscript/atk/styluscore/Color;)F

    move-result v0

    return v0
.end method

.method public greenComponent()Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_greenComponent(JLcom/myscript/atk/styluscore/Color;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;-><init>(JZ)V

    return-object v0
.end method

.method public nativeEquals(Lcom/myscript/atk/styluscore/Color;)Z
    .locals 6

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {p1}, Lcom/myscript/atk/styluscore/Color;->getCPtr(Lcom/myscript/atk/styluscore/Color;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_nativeEquals(JLcom/myscript/atk/styluscore/Color;JLcom/myscript/atk/styluscore/Color;)Z

    move-result v0

    return v0
.end method

.method public packed()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_packed(JLcom/myscript/atk/styluscore/Color;)J

    move-result-wide v0

    return-wide v0
.end method

.method public red()F
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_red(JLcom/myscript/atk/styluscore/Color;)F

    move-result v0

    return v0
.end method

.method public redComponent()Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;
    .locals 4

    new-instance v0, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/Color;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->Color_redComponent(JLcom/myscript/atk/styluscore/Color;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/myscript/atk/styluscore/SWIGTYPE_p_byte;-><init>(JZ)V

    return-object v0
.end method
