.class public Lcom/samsung/android/visualeffect/InnerViewManager;
.super Ljava/lang/Object;
.source "InnerViewManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/samsung/android/visualeffect/IEffectView;
    .locals 3

    const-string v0, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    if-nez p1, :cond_1

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "ABSTRACTTILES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileEffect;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy ABSTRACTTILES"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "GEOMETRICMOSAIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy GEOMETRICMOSAIC"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy NONE"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "POPPINGCOLOURS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy POPPINGCOLOURS"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    new-instance v1, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "WATERCOLOUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy WATERCOLOUR"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-ne p1, v1, :cond_c

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "BRILLIANTCUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy BRILLIANTCUT"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x7

    if-ne p1, v1, :cond_e

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "BRILLIANTRING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_d
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy BRILLIANTRING"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x8

    if-ne p1, v1, :cond_10

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "RIPPLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_f
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy RIPPLE"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x9

    if-ne p1, v1, :cond_12

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "INDIGODIFFUSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/indigodiffusion/IndigoDiffusionEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_11
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy INDIGODIFFUSION"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xa

    if-ne p1, v1, :cond_14

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "BLIND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/blind/BlindEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_13
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy BLIND"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xb

    if-ne p1, v1, :cond_16

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "LIGHTING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/lensflare/LensFlareEffect;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_15
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy LIGHTING"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xf

    if-ne p1, v1, :cond_18

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "SPARKLINGBUBBLES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_TV;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_17
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy SPARKLINGBUBBLES"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xe

    if-ne p1, v1, :cond_1a

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "SPARKLINGBUBBLES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_GL;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/sparklingbubbles/SparklingBubblesEffect_GL;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_19
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy SPARKLINGBUBBLES"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1c

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "WATERDROPLET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_TV;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_TV;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1b
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy WATERDROPLET"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1e

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "WATERDROPLET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/waterdroplet/WaterDropletEffect_GL;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1d
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy WATERDROPLET"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x11

    if-ne p1, v1, :cond_20

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "COLOURDROPLET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletEffect_TV;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletEffect_TV;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1f
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy COLOURDROPLET"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x10

    if-ne p1, v1, :cond_22

    const-string v1, "COLOURDROPLET, NONE, SPARKLINGBUBBLES"

    const-string v2, "COLOURDROPLET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletEffect_GL;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/colourdroplet/ColourDropletEffect_GL;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_21
    new-instance v1, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;

    const-string v2, "dummy COLOURDROPLET"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/visualeffect/lock/common/dummyBGView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
