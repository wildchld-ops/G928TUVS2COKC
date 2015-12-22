.class public Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "ShaderUIAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderUIAnimation"


# instance fields
.field private mEffectName:Ljava/lang/String;

.field private mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;",
            ">;",
            "Ljava/lang/String;",
            "FF)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p3, p4, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->mProperties:Ljava/util/List;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->mEffectName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->mProperties:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->mEffectName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEffectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->mEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->mProperties:Ljava/util/List;

    return-object v0
.end method
