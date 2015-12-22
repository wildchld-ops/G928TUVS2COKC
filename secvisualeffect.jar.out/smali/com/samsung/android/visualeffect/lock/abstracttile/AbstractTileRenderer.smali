.class public Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileRenderer;
.super Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
.source "AbstractTileRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const-string v0, "libsecveAbstractTile.so"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "AbstractTile Renderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileRenderer;->TAG:Ljava/lang/String;

    return-void
.end method
