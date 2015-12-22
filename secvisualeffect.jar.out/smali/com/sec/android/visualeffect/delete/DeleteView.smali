.class public Lcom/sec/android/visualeffect/delete/DeleteView;
.super Landroid/view/TextureView;
.source "DeleteView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    const-string v0, "DeleteView"

    sput-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->initialize()V

    return-void
.end method

.method public static callbackFromNative(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "CrumplingEventListener not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 2

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "version 2014.1.08"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/delete/DeleteView;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method public initModel(IIFFLandroid/graphics/Bitmap;IIFFZI)V
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onViewReady()V

    :cond_0
    return-void
.end method

.method public initView(FFFLandroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "shadow recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public initView(Landroid/graphics/Bitmap;)V
    .locals 2

    const v1, 0x3eb4b4b5

    const v0, 0x3eb2b2b3

    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/sec/android/visualeffect/delete/DeleteView;->initView(FFFLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onViewCreated()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setCrumplingEventListener(Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;)V
    .locals 0

    sput-object p1, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    return-void
.end method

.method public setStartState()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->onResume()V

    return-void
.end method

.method public setStopState()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->onPause()V

    return-void
.end method

.method public startCrumplingAnimation(Z)V
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method
