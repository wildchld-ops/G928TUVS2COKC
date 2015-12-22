.class public Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "RotateUIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateUIAnimation"


# instance fields
.field private mAxis:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

.field private mEndAngle:F


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFFI)V
    .locals 1

    invoke-direct {p0, p3, p4, p5}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->mAxis:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->mEndAngle:F

    iput p2, p0, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->mEndAngle:F

    iput-object p1, p0, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->mAxis:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    return-void
.end method


# virtual methods
.method public getAxis()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->mAxis:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    return-object v0
.end method

.method public getEndAngle()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->mEndAngle:F

    return v0
.end method
