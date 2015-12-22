.class public Lcom/sec/android/app/launcher/utils/FadeDuration;
.super Ljava/lang/Object;
.source "FadeDuration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeDuration"


# instance fields
.field private defaultDuration:F

.field private hasInSet:Z

.field private hasOutSet:Z

.field private inDuration:F

.field private outDuration:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasInSet:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasOutSet:Z

    const-string v0, "FadeDuration"

    const-string v1, "FadeDuration created without init value, set to 0.0f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    iput v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->inDuration:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    iput v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->outDuration:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasInSet:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasOutSet:Z

    iput p1, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    iput v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->inDuration:F

    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    iput v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->outDuration:F

    return-void
.end method


# virtual methods
.method public getDefaultDuration()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    return v0
.end method

.method public getInDuration()F
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasInSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->inDuration:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    goto :goto_0
.end method

.method public getOutDuration()F
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasOutSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->outDuration:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    goto :goto_0
.end method

.method public setDefaultDuration(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->defaultDuration:F

    return-void
.end method

.method public setInDuration(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->inDuration:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasInSet:Z

    return-void
.end method

.method public setOutDuration(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->outDuration:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/FadeDuration;->hasOutSet:Z

    return-void
.end method
