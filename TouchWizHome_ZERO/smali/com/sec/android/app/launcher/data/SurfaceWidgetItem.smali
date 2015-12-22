.class public Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;
.super Lcom/sec/android/app/launcher/data/LauncherItem;
.source "SurfaceWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$ISurfaceListener;,
        Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;
    }
.end annotation


# static fields
.field public static final SURFACE_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET.themename"

.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetItem:DALI"


# instance fields
.field private DEBUGGABLE:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

.field private mInstance:I

.field private mState:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

.field private mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->DEBUGGABLE:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    sget-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mState:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mItemType:I

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$ISurfaceListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/LauncherItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->DEBUGGABLE:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    sget-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mState:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mItemType:I

    return-void
.end method


# virtual methods
.method public destroyWidget(Landroid/content/Context;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;Z)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->stopUpdateTexture()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    iget v1, v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->mServiceInstance:I

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->removeWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onDestroy(Z)Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    :cond_3
    return-void
.end method

.method public getConnection()Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    return-object v0
.end method

.method protected getResizeMode()I
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getMinSpanX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getMaxSpanX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->getSpanX()I

    move-result v3

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    const/4 v0, 0x4

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v4, v4, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    if-lt v2, v3, :cond_1

    if-lt v2, v0, :cond_1

    if-gt v1, v0, :cond_2

    if-le v1, v3, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v4, v4, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v4, v4, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    goto :goto_0
.end method

.method public getState()Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mState:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    return-object v0
.end method

.method public getWidgetInfo()Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    return-object v0
.end method

.method public getWidgetView()Lcom/sec/android/app/launcher/views/SurfaceWidgetView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    return-object v0
.end method

.method public isAlive()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mState:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    sget-object v2, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    sget-object v4, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    :cond_0
    :goto_0
    iget v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    if-ne v4, v5, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v4, :cond_1

    const-string v4, "SurfaceWidgetItem:DALI"

    const-string v5, "could not create widget instance...do you have onlyOneInstance set and are trying to place a 2nd widget?"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    if-ne v4, v5, :cond_3

    invoke-virtual {v2, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_0

    iget v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v2, p2, v4}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->updateWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V

    goto :goto_0

    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v4, :cond_5

    const-string v4, "SurfaceWidgetItem:DALI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSurfaceWidget()  item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getViewInflater()Lcom/sec/daliviews/views/ViewInflater;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-nez v4, :cond_7

    const v4, 0x7f030054

    invoke-virtual {v0, v4}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getLayoutParams()Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    if-eqz v3, :cond_6

    invoke-virtual {v3, p3}, Lcom/sec/daliviews/views/ContainerViewBase;->deleteView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->linkItemView(Lcom/sec/daliviews/views/NativeViewBase;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v3, v4}, Lcom/sec/daliviews/views/ContainerViewBase;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_6
    invoke-virtual {p3, v7}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p3, v7}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setTag(Ljava/lang/Object;)V

    const/4 p3, 0x0

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    iget v5, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInstance:I

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    invoke-static {v4, p2, v5, v6}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->bindToService(Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;ILcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    goto/16 :goto_1
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/ItemView;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setHasModes(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    return-object v0
.end method

.method public bridge synthetic onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->onCreateItemView()Lcom/sec/daliviews/views/ItemView;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onPause()Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onResume()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->resumeLater(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onWidgetViewDestroyed()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    sget-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;->onDestroy(Z)Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    :cond_0
    return-void
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public setState(Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mState:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    return-void
.end method

.method public unbind()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "SurfaceWidgetItem:DALI"

    const-string v2, "unbind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "SurfaceWidgetItem:DALI"

    const-string v2, "unbind calling destroyWidget!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;Z)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mConnection:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection;

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    :cond_1
    return-void
.end method
