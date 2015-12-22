.class public Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "SizeUIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResizeUIAnimation"


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p4, p5}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->mWidth:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->mHeight:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->mWidth:F

    iput p2, p0, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->mHeight:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->mWidth:F

    return v0
.end method
