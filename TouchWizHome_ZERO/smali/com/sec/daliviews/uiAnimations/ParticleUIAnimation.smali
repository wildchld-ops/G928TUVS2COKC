.class public Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;
.super Lcom/sec/daliviews/uiAnimations/UIAnimation;
.source "ParticleUIAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParticleUIAnimation"


# instance fields
.field private mParticleConfig:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;

.field private mParticleTextureFileName:Ljava/lang/String;

.field private mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;Ljava/lang/String;Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p4, p5, v0}, Lcom/sec/daliviews/uiAnimations/UIAnimation;-><init>(FFI)V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mParticleConfig:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mParticleTextureFileName:Ljava/lang/String;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iput-object p1, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mParticleConfig:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;

    iput-object p2, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mParticleTextureFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mParticleConfig:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;

    return-object v0
.end method

.method public getPosition()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    return-object v0
.end method

.method public getTextureFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->mParticleTextureFileName:Ljava/lang/String;

    return-object v0
.end method
