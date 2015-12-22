.class public Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileEffect;
.super Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;
.source "AbstractTileEffect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;-><init>(Landroid/content/Context;)V

    const-string v0, "AbstractTile View"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileEffect;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileEffect;->veContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileEffect;->setEffectRenderer(I)V

    return-void
.end method
