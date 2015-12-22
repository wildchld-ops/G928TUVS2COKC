.class public Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "ColourUIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColourUIAnimation"


# instance fields
.field private mEndColour:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;FFI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;->mEndColour:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iput-object p1, p0, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;->mEndColour:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    return-void
.end method


# virtual methods
.method public getEndColour()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;->mEndColour:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    return-object v0
.end method
