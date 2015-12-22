.class public Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingRenderer;
.super Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
.source "BrilliantRingRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const-string v0, "libsecveBrilliantRing.so"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "BrilliantRing Renderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingRenderer;->TAG:Ljava/lang/String;

    return-void
.end method
