.class public Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;
.super Ljava/lang/Object;
.source "UIAnimationDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/uiAnimations/UIAnimationDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PixelArea"
.end annotation


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->x:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->y:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->width:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->height:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->x:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->y:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->width:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->height:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->x:F

    iput p2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->y:F

    iput p3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->width:F

    iput p4, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->height:F

    return-void
.end method
