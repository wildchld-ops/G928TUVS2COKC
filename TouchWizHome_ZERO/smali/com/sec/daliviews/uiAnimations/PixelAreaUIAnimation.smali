.class public Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "PixelAreaUIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideUIAnimation"


# instance fields
.field private mArea:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;FFI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;->mArea:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;

    iput-object p1, p0, Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;->mArea:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;

    return-void
.end method


# virtual methods
.method public getPixelArea()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;->mArea:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;

    return-object v0
.end method
