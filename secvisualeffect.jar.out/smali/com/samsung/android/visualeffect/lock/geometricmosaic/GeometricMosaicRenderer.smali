.class public Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicRenderer;
.super Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
.source "GeometricMosaicRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const-string v0, "libsecveGeometricMosaic.so"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "GeometricMosaic_Renderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicRenderer;->TAG:Ljava/lang/String;

    return-void
.end method
