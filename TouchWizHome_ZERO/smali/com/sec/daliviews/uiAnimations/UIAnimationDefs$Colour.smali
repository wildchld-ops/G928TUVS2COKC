.class public Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;
.super Ljava/lang/Object;
.source "UIAnimationDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/uiAnimations/UIAnimationDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colour"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    iput p1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    iput p2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    iput p3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    iput p4, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    return-void
.end method
