.class public Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "FadeUIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeUIAnimation"


# instance fields
.field private mEndAlpha:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;->mEndAlpha:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;->mEndAlpha:F

    return-void
.end method


# virtual methods
.method public getEndAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;->mEndAlpha:F

    return v0
.end method
