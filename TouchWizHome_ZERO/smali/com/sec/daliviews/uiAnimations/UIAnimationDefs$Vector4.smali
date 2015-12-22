.class public Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;
.super Ljava/lang/Object;
.source "UIAnimationDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/uiAnimations/UIAnimationDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector4"
.end annotation


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    iput p2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    iput p3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    iput p4, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    return-void
.end method
