.class public Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorGLSurfaceRenderer;
.super Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;
.source "WaterColorGLSurfaceRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/GLSurfaceViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorGLSurfaceRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorGLSurfaceRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const-string v0, "/system/lib/libsecveWaterColor.so"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorGLSurfaceRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "WaterColor Renderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorGLSurfaceRenderer;->TAG:Ljava/lang/String;

    return-void
.end method
