.class public Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;
.super Ljava/lang/Object;
.source "ShaderUIAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShaderProperties"
.end annotation


# instance fields
.field public mAlphaFunc:I

.field public mEndVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

.field public mName:Ljava/lang/String;

.field public mSize:I

.field public mStartVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mName:Ljava/lang/String;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mStartVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mEndVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iput v1, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mSize:I

    iput v1, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mAlphaFunc:I

    return-void
.end method
