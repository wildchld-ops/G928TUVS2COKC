.class public Lcom/samsung/android/visualeffect/common/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/common/GLTextureView$1;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$EglHelper;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$ComponentSizeChooser;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$BaseConfigChooser;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$DefaultContextFactory;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;,
        Lcom/samsung/android/visualeffect/common/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;


# instance fields
.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/visualeffect/common/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;-><init>(Lcom/samsung/android/visualeffect/common/GLTextureView$1;)V

    sput-object v0, Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/common/GLTextureView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLConfigChooser:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLContextFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600()Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/visualeffect/common/GLTextureView;->sGLThreadManager:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/visualeffect/common/GLTextureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0, p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    :cond_0
    new-instance v1, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->setRenderMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->start()V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mDetached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mDetached:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->onResume()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->surfaceCreated()V

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/visualeffect/common/GLTextureView;->surfaceChanged(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->surfaceDestroyed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/visualeffect/common/GLTextureView;->surfaceChanged(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->requestRender()V

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    new-instance v0, Lcom/samsung/android/visualeffect/common/GLTextureView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/visualeffect/common/GLTextureView$ComponentSizeChooser;-><init>(Lcom/samsung/android/visualeffect/common/GLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setEGLConfigChooser(Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLConfigChooser:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/visualeffect/common/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/visualeffect/common/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/samsung/android/visualeffect/common/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setEGLConfigChooser(Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->checkRenderThreadState()V

    iput p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLContextFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/common/GLTextureView;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLConfigChooser:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/visualeffect/common/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/samsung/android/visualeffect/common/GLTextureView;Z)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLConfigChooser:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLContextFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/visualeffect/common/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/visualeffect/common/GLTextureView$DefaultContextFactory;-><init>(Lcom/samsung/android/visualeffect/common/GLTextureView;Lcom/samsung/android/visualeffect/common/GLTextureView$1;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLContextFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLContextFactory;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/visualeffect/common/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/samsung/android/visualeffect/common/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/samsung/android/visualeffect/common/GLTextureView$1;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/samsung/android/visualeffect/common/GLTextureView$EGLWindowSurfaceFactory;

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mRenderer:Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;

    new-instance v0, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->start()V

    return-void
.end method

.method public surfaceChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/common/GLTextureView;->mGLThread:Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/common/GLTextureView$GLThread;->surfaceDestroyed()V

    return-void
.end method
