.class public Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorRenderer;
.super Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
.source "WaterColorRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const-string v0, "libsecveWaterColor.so"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "WaterColor_Renderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorRenderer;->TAG:Ljava/lang/String;

    return-void
.end method
