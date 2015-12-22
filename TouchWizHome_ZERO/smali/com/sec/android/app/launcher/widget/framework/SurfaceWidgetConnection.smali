.class public final Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;,
        Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;,
        Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LAUNCHER_SURFACE_WIDGET_SERVICE_VERSION:I = 0x39f50

.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetConnection"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

.field public final mServiceInstance:I

.field private final mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    iput p2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceInstance:I

    iput-object p4, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    return-void
.end method

.method public static bindToService(Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;ILcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez p3, :cond_2

    new-instance v6, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v6, v0, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;-><init>(Landroid/content/ComponentName;I)V

    new-instance v3, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-direct {v3, v6, p0, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;-><init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "instance"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->bind(Landroid/content/Context;Landroid/content/Intent;)V

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;
    invoke-static {v3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->access$000(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;
    invoke-static {v3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->access$000(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v7, v2, v4}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;
    invoke-static {v3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->access$000(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    move-result-object v4

    move-object v0, p3

    move v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;-><init>(Landroid/content/Context;ILcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V

    :cond_1
    return-object p3

    :cond_2
    iget-object v3, p3, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    goto :goto_0
.end method


# virtual methods
.method public isBound()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->mIsBound:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->access$100(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;)Z

    move-result v0

    return v0
.end method

.method public onDestroy(Z)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->unregisterGyro()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onDestroy(Z)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->unbind(Landroid/content/Context;)V

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onDestroy() has a problem when destroying widget. Ignore and keep going"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onLauncherTiltChanged(FFF)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onLauncherTiltChanged(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPause()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->unregisterGyro()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPositionOffsetChanged(FFF)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->arePositionUpdatesOn()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onPositionOffsetChanged(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onResume()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->registerGyro()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mSurfaceInfo:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->access$200(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onResume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVerticalTouch(Landroid/view/MotionEvent;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onVerticalTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->registerGyro()V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onVisibilityChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->unregisterGyro()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public resumeLater(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->resumeLater(Z)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->setFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setUpdateTime(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->setUpdateTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateContentDescription()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->updateContentDescription()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
