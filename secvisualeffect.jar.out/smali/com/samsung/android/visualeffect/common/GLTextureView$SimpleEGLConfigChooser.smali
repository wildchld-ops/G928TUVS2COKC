.class Lcom/samsung/android/visualeffect/common/GLTextureView$SimpleEGLConfigChooser;
.super Lcom/samsung/android/visualeffect/common/GLTextureView$ComponentSizeChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/common/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/common/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/visualeffect/common/GLTextureView;Z)V
    .locals 8

    const/16 v2, 0x8

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/samsung/android/visualeffect/common/GLTextureView;

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/visualeffect/common/GLTextureView$ComponentSizeChooser;-><init>(Lcom/samsung/android/visualeffect/common/GLTextureView;IIIIII)V

    return-void

    :cond_0
    move v6, v5

    goto :goto_0
.end method
