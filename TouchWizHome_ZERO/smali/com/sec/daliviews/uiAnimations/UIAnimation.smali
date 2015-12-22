.class public Lcom/sec/daliviews/uiAnimations/UIAnimation;
.super Ljava/lang/Object;
.source "UIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIAnimation"


# instance fields
.field private mAlphaFunc:I

.field private mDuration:F

.field private mStartTime:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mStartTime:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mDuration:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mAlphaFunc:I

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mStartTime:F

    iput p2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mDuration:F

    iput p3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mAlphaFunc:I

    return-void
.end method


# virtual methods
.method public getAlphaFunc()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mAlphaFunc:I

    return v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mDuration:F

    return v0
.end method

.method public getStartTime()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimation;->mStartTime:F

    return v0
.end method
