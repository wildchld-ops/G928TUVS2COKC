.class public Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "ScaleUIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleUIAnimation"


# instance fields
.field private mEndScale:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FFI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;->mEndScale:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iput-object p1, p0, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;->mEndScale:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    return-void
.end method


# virtual methods
.method public getEndScale()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;->mEndScale:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    return-object v0
.end method
