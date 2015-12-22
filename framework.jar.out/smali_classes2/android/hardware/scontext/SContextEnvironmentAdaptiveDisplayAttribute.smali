.class public Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextEnvironmentAdaptiveDisplayAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextEnvironmentAdaptiveDisplayAttribute"


# instance fields
.field private mColorThreshold:F

.field private mDuration:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/16 v0, 0x23

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/16 v0, 0x23

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    iput p1, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    iput p2, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "color_threshold"

    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SContextEnvironmentAdaptiveDisplayAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAttribute() mColorThreshold : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "color_threshold"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SContextEnvironmentAdaptiveDisplayAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAttribute() mDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2c

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mColorThreshold:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const-string v1, "SContextEnvironmentAdaptiveDisplayAttribute"

    const-string v2, "The color threshold value is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;->mDuration:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_2

    :cond_1
    const-string v1, "SContextEnvironmentAdaptiveDisplayAttribute"

    const-string v2, "The duration value is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
