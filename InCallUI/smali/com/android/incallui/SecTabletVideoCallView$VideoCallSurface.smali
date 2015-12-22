.class Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;
.super Ljava/lang/Object;
.source "SecTabletVideoCallView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletVideoCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCallSurface"
.end annotation


# instance fields
.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceId:I

.field private mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/android/incallui/SecTabletVideoCallView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecTabletVideoCallView;ILandroid/view/TextureView;)V
    .locals 7

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;-><init>(Lcom/android/incallui/SecTabletVideoCallView;ILandroid/view/TextureView;II)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    # setter for: Lcom/android/incallui/SecTabletVideoCallView;->mWidth:I
    invoke-static {p1, v0}, Lcom/android/incallui/SecTabletVideoCallView;->access$002(Lcom/android/incallui/SecTabletVideoCallView;I)I

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    # setter for: Lcom/android/incallui/SecTabletVideoCallView;->mHeight:I
    invoke-static {p1, v0}, Lcom/android/incallui/SecTabletVideoCallView;->access$102(Lcom/android/incallui/SecTabletVideoCallView;I)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/SecTabletVideoCallView;ILandroid/view/TextureView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # setter for: Lcom/android/incallui/SecTabletVideoCallView;->mWidth:I
    invoke-static {p1, p4}, Lcom/android/incallui/SecTabletVideoCallView;->access$002(Lcom/android/incallui/SecTabletVideoCallView;I)I

    # setter for: Lcom/android/incallui/SecTabletVideoCallView;->mHeight:I
    invoke-static {p1, p5}, Lcom/android/incallui/SecTabletVideoCallView;->access$102(Lcom/android/incallui/SecTabletVideoCallView;I)I

    iput p2, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {p0, p3}, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->recreateView(Landroid/view/TextureView;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget v1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSurfaceId:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/incallui/SecTabletVideoCallView;->surfaceTextureCreated(ILandroid/graphics/SurfaceTexture;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget v1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletVideoCallView;->surfaceTextureDestroyed(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->setDoneWithSurface()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget v1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSurfaceId:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/SecTabletVideoCallView;->surfaceTextureUpdated(ILandroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public recreateView(Landroid/view/TextureView;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method public setDoneWithSurface()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallView$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-void
.end method
