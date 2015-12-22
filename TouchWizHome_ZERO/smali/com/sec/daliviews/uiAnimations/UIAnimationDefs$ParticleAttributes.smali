.class public Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;
.super Ljava/lang/Object;
.source "UIAnimationDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/uiAnimations/UIAnimationDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleAttributes"
.end annotation


# static fields
.field public static final NUM_PARTICLES_FLOAT_PROPERTIES:I = 0x27

.field public static final NUM_PARTICLES_INT_PROPERTIES:I = 0x2


# instance fields
.field public mBatchInterval:F

.field public mColorVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

.field public mDampening:F

.field public mDeformationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

.field public mEndColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

.field public mGravity:F

.field public mLifeSpan:F

.field public mLifeSpanVariance:F

.field public mNumParticles:I

.field public mNumParticlesCreatedPerBatch:I

.field public mParticleEndSize:F

.field public mParticleSizeVariance:F

.field public mParticleStartSize:F

.field public mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

.field public mPositionVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

.field public mStartColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

.field public mTextureAnimationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

.field public mVelocity:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

.field public mVelocityVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mStartColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mEndColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mColorVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mTextureAnimationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPositionVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocity:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocityVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    new-instance v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    invoke-direct {v0}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mDeformationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iput v3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mParticleStartSize:F

    iput v3, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mParticleEndSize:F

    iput v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mParticleSizeVariance:F

    iput v2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mLifeSpan:F

    iput v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mLifeSpanVariance:F

    iput v2, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mBatchInterval:F

    iput v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mGravity:F

    iput v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mDampening:F

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mNumParticles:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mNumParticlesCreatedPerBatch:I

    return-void
.end method


# virtual methods
.method public CopyDataToArrays([I[F)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mNumParticles:I

    aput v0, p1, v1

    iget v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mNumParticlesCreatedPerBatch:I

    aput v0, p1, v2

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mStartColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v0, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    aput v0, p2, v1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mStartColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v0, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    aput v0, p2, v2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mStartColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    aput v1, p2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mStartColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    aput v1, p2, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mEndColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    aput v1, p2, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mEndColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    aput v1, p2, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mEndColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    aput v1, p2, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mEndColor:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    aput v1, p2, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mColorVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    aput v1, p2, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mColorVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    aput v1, p2, v0

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mColorVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    aput v1, p2, v0

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mColorVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    aput v1, p2, v0

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mTextureAnimationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    aput v1, p2, v0

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mTextureAnimationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    aput v1, p2, v0

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mTextureAnimationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    aput v1, p2, v0

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mTextureAnimationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    aput v1, p2, v0

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    aput v1, p2, v0

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    aput v1, p2, v0

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPosition:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    aput v1, p2, v0

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPositionVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    aput v1, p2, v0

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPositionVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    aput v1, p2, v0

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mPositionVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    aput v1, p2, v0

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocity:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    aput v1, p2, v0

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocity:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    aput v1, p2, v0

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocity:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    aput v1, p2, v0

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocityVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    aput v1, p2, v0

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocityVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    aput v1, p2, v0

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mVelocityVariance:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    aput v1, p2, v0

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mDeformationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    aput v1, p2, v0

    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mDeformationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    aput v1, p2, v0

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mDeformationControls:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    aput v1, p2, v0

    const/16 v0, 0x1f

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mParticleStartSize:F

    aput v1, p2, v0

    const/16 v0, 0x20

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mParticleEndSize:F

    aput v1, p2, v0

    const/16 v0, 0x21

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mParticleSizeVariance:F

    aput v1, p2, v0

    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mLifeSpan:F

    aput v1, p2, v0

    const/16 v0, 0x23

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mLifeSpanVariance:F

    aput v1, p2, v0

    const/16 v0, 0x24

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mBatchInterval:F

    aput v1, p2, v0

    const/16 v0, 0x25

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mGravity:F

    aput v1, p2, v0

    const/16 v0, 0x26

    iget v1, p0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->mDampening:F

    aput v1, p2, v0

    return-void
.end method
