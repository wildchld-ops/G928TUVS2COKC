.class public Lcom/sec/android/app/launcher/views/LiveClockUsingView;
.super Lcom/sec/android/app/launcher/views/LiveView;
.source "LiveClockUsingView.java"


# static fields
.field private static final ANIM_TIME_SECONDS:F = 5.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBg:Lcom/sec/daliviews/views/ImageView;

.field private mHour:Lcom/sec/daliviews/views/ImageView;

.field private mLastHour:I

.field private mLastMinute:I

.field private mLastSecond:I

.field private mMinute:Lcom/sec/daliviews/views/ImageView;

.field private mSeconds:Lcom/sec/daliviews/views/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/LiveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mBg:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastHour:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastMinute:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastSecond:I

    return-void
.end method

.method private getBg()Lcom/sec/daliviews/views/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mBg:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mBg:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mBg:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mBg:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method private getHour()Lcom/sec/daliviews/views/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method private getMinute()Lcom/sec/daliviews/views/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method private getSecond()Lcom/sec/daliviews/views/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    return-object v0
.end method

.method private updateView(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->updateView(FZ)V

    return-void
.end method

.method private updateView(FZ)V
    .locals 9

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->getBg()Lcom/sec/daliviews/views/ImageView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    sget-object v6, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " min : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sec : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastSecond:I

    if-ne v6, v5, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->getSecond()Lcom/sec/daliviews/views/ImageView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ImageView;->isValidPeer()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ImageView;->stopAllAnim()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    mul-int/lit8 v7, v5, 0x6

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ImageView;->setZRotation(F)V

    :cond_1
    iget v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastMinute:I

    if-ne v6, v4, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->getMinute()Lcom/sec/daliviews/views/ImageView;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ImageView;->isValidPeer()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mMinute:Lcom/sec/daliviews/views/ImageView;

    mul-int/lit8 v7, v4, 0x6

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ImageView;->setZRotation(F)V

    :cond_3
    iget v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastHour:I

    if-ne v6, v1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->getHour()Lcom/sec/daliviews/views/ImageView;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v6}, Lcom/sec/daliviews/views/ImageView;->isValidPeer()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateView update start hour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mHour:Lcom/sec/daliviews/views/ImageView;

    mul-int/lit8 v7, v1, 0x1e

    int-to-float v7, v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/daliviews/views/ImageView;->setZRotation(F)V

    :cond_5
    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastHour:I

    iput v4, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastMinute:I

    iput v5, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mLastSecond:I

    return-void
.end method


# virtual methods
.method public changeMode(I)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/views/LiveView;->setDefaultMode(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->updateView(FZ)V

    return-void
.end method

.method public setIconView(Lcom/sec/android/app/launcher/views/HomeItemView;)V
    .locals 0

    return-void
.end method

.method public startAnim()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->TAG:Ljava/lang/String;

    const-string v1, "startAnim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->updateView(F)V

    return-void
.end method

.method public stopAnim()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->TAG:Ljava/lang/String;

    const-string v1, "stopAnim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->getSecond()Lcom/sec/daliviews/views/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/ImageView;->stopAllAnim()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveClockUsingView;->mSeconds:Lcom/sec/daliviews/views/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ImageView;->setZRotateByAnimationFinishedListener(Lcom/sec/daliviews/views/NativeViewBase$ZRotateByAnimationFinishedListener;)V

    :cond_0
    return-void
.end method
