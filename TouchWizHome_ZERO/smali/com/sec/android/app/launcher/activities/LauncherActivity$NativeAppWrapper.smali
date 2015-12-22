.class Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeApp$OnInitListener;
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeAppWrapper"
.end annotation


# instance fields
.field private mAttached:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInitialised:Z

.field private final mNativeApp:Lcom/sec/daliviews/views/NativeApp;

.field private mSurfaceChanged:Z

.field private mWidth:I

.field private mXdpi:F

.field private mYdpi:F

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mAttached:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mSurfaceChanged:Z

    iput v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mXdpi:F

    iput v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mYdpi:F

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mWidth:I

    iput v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHeight:I

    new-instance v0, Lcom/sec/daliviews/views/NativeApp;

    invoke-direct {v0}, Lcom/sec/daliviews/views/NativeApp;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getTextureScaleRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setTextureScaleRatio(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setAssetManager(Landroid/content/res/AssetManager;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setCacheDir(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/NativeApp;->setOnInitListener(Lcom/sec/daliviews/views/NativeApp$OnInitListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Lcom/sec/daliviews/views/NativeApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mSurfaceChanged:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mXdpi:F

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mYdpi:F

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mWidth:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHeight:I

    return v0
.end method


# virtual methods
.method public attachRootView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->attachRootView(Lcom/sec/daliviews/views/ContainerViewBase;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mAttached:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setFocusableInTouchMode(Z)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setOnInitListener(Lcom/sec/daliviews/views/NativeApp$OnInitListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeApp;->destroy()V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public detachRootView()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mAttached:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->detachRootView(Lcom/sec/daliviews/views/ContainerViewBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mAttached:Z

    goto :goto_0
.end method

.method public getInitialised()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z

    return v0
.end method

.method public isInitialised()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z

    return v0
.end method

.method public nativeApp()Lcom/sec/daliviews/views/NativeApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    return-object v0
.end method

.method public onNativeInit()V
    .locals 2

    const-string v0, "LauncherActivity"

    const-string v1, "onNativeInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->createEffects()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper$1;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeApp;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeApp;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeApp;->onStop()V

    return-void
.end method

.method public prepareForShutdown()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->detachRootView()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeApp;->setOnInitListener(Lcom/sec/daliviews/views/NativeApp$OnInitListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeApp;->prepareForShutdown()V

    return-void
.end method

.method public queueIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeApp;->onIdle()V

    const/4 v0, 0x1

    return v0
.end method

.method public surfaceChanged(FFII)V
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mWidth:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHeight:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mWidth:I

    if-ne v2, p3, :cond_0

    iget v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHeight:I

    if-eq v2, p4, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mInitialised:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/daliviews/views/NativeApp;->surfaceChanged(FFII)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPanGestureMinMotionPixel:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$3700(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeApp;->setMinimumMotionBeforePan(I)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mRootView:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1500(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/daliviews/views/ContainerView;->setSize(II)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1400(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/events/NativeEventHitlist;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mEventHitList:Lcom/sec/daliviews/events/NativeEventHitlist;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$1400(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/daliviews/events/NativeEventHitlist;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/daliviews/events/NativeEventHitlist;->surfaceChanged(FFII)V

    :cond_3
    :goto_1
    iput p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mXdpi:F

    iput p2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mYdpi:F

    iput p3, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mWidth:I

    iput p4, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mHeight:I

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mSurfaceChanged:Z

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mPanGestureMinMotionPixel:I
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$3700(Lcom/sec/android/app/launcher/activities/LauncherActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/NativeApp;->setMinimumMotionBeforePan(I)V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/Surface;FFFII)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/daliviews/views/NativeApp;->surfaceCreated(Landroid/view/Surface;FFFII)V

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mSurfaceChanged:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$NativeAppWrapper;->mNativeApp:Lcom/sec/daliviews/views/NativeApp;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeApp;->surfaceDestroyed()V

    return-void
.end method
