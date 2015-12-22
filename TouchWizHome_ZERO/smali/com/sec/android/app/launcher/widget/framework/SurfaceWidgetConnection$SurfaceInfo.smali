.class final Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    }
.end annotation


# instance fields
.field private final mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

.field private mOrientation:I

.field private mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

.field private final mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    iput-object p2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    iput-object p3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;)Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;)Lcom/sec/android/app/launcher/views/SurfaceWidgetView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    return-object v0
.end method


# virtual methods
.method public getLatestSurfaceState()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    return-object v0
.end method

.method isSameOrientation(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v8, :cond_4

    const-string v0, "SurfaceWidgetConnection"

    const-string v1, "Cannot get associated SurfaceWidgetItem - event will not be sent to widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getCachedSpanX()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getCachedSpanY()I

    move-result v6

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceTextureAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->registerGyro()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onResume()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 9

    const/4 v8, 0x1

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s surface texture was destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->checkA8Device()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->isValidPeer()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0x%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getPeer()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setScale(FF)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceDestroyed()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v8

    :catch_0
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onSurfaceTextureDestroyed() came earlier than onServiceDisconnected() so wait for onServiceDisconnected() to restart widget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "onSurfaceTextureDestroyed() has a problem when destroying widget. Wait for onServiceDisconnected()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p2, v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p3, v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SurfaceWidgetConnection"

    const-string v1, "mSurfaceWidgetView.setOpacity(0.0f);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setScale(FF)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v8, :cond_6

    const-string v0, "SurfaceWidgetConnection"

    const-string v1, "Cannot get associated SurfaceWidgetItem - event will not be sent to widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget v0, v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget v0, v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    if-ne v0, p3, :cond_3

    goto :goto_0

    :cond_6
    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getSpanX()I

    move-result v5

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getSpanY()I

    move-result v6

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setScreenShot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public releaseSurface()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v0, v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface texture is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method
