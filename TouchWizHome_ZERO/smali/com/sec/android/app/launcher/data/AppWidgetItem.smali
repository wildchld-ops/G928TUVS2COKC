.class public Lcom/sec/android/app/launcher/data/AppWidgetItem;
.super Lcom/sec/android/app/launcher/data/WidgetItem;
.source "AppWidgetItem.java"

# interfaces
.implements Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;
.implements Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;


# static fields
.field public static APP_WIDGET_IS_DRAWABLE_VIEW:Z = false

.field private static final TAG:Ljava/lang/String; = "AppWidgetItem"

.field static final WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field static final WIDGET_SUPPORT_INFO:Ljava/lang/String; = "com.sec.android.appwidget.widgetinfo"

.field private static final mHWWidgetPackageNames:[Ljava/lang/String;


# instance fields
.field private mValidSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

.field protected final mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.email.widget"

    aput-object v2, v0, v1

    const-string v1, "com.samsung.android.snote"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mHWWidgetPackageNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/data/WidgetItem;-><init>(Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mValidSizes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mItemType:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setResizeNotImmediate(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->createHostView()V

    return-void
.end method

.method private createHostView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mBinder:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;

    instance-of v0, v0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mBinder:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;

    invoke-virtual {v0, p0, p0}, Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;->bindWidget(Lcom/sec/android/app/launcher/data/WidgetItem;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getResizeMode()I
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getMinSpanX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getMaxSpanX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getSpanX()I

    move-result v3

    sget v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    const/4 v0, 0x4

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    if-lt v2, v3, :cond_1

    if-lt v2, v0, :cond_1

    if-gt v1, v0, :cond_2

    if-le v1, v3, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    goto :goto_0
.end method

.method public getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public isAvailableSize(II)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v4, v1, v3

    if-ne v4, p1, :cond_1

    aget v4, v1, v2

    if-ne v4, p2, :cond_1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isCompatable(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroyed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onBind(ZI)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mBinder:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    sget-boolean v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->createHostView(Lcom/sec/android/app/launcher/data/AppWidgetItem;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setHostView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->createHostView(Lcom/sec/android/app/launcher/data/AppWidgetItem;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setHostView(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    goto :goto_0
.end method

.method public onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 8

    const-string v5, "AppWidgetItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateItemView pos x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getCellX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getCellY()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " span x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getSpanX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getSpanY()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    if-eqz v5, :cond_1

    new-instance v5, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-direct {v5}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getUiHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/launcher/data/AppWidgetItem$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem$1;-><init>(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v5, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-direct {v5}, Lcom/sec/android/app/launcher/views/AppWidgetView;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mHWWidgetPackageNames:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setUseHWCanvas(Z)V

    const-string v5, "snote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setHWCanvasSetDirtyDelay(J)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setHWCanvasSetDirtyDelay(J)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    goto :goto_0
.end method

.method public populateView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    return-void
.end method

.method public updateForCancelChangeGrid()V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mChangeGrid:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/views/AppWidgetView;->mChangeGrid:Z

    goto :goto_0
.end method

.method public updateForChangeGrid()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    if-eqz v0, :cond_0

    const-string v0, "AppWidgetItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppDrawableWidget update for change grid (widgetid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetDrawableView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->updateForChangeGrid()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v0, :cond_1

    const-string v0, "AppWidgetItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppWidget update for change grid (widgetid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->updateForChangeGrid()V

    goto :goto_0

    :cond_1
    const-string v0, "AppWidgetItem"

    const-string v1, "AppWidget update for change grid. But appwidget view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateForRotation()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isRotationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mBinder:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    sget-boolean v2, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setIgnoreDraw(Z)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->createHostView(Lcom/sec/android/app/launcher/data/AppWidgetItem;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setHostView(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetView:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setIgnoreDraw(Z)V

    goto :goto_0
.end method

.method public updateSupportWidgetSize()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    if-eqz v27, :cond_8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_0
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v27, Landroid/content/Intent;

    const-string v28, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const/16 v28, 0x80

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    const-string v28, "com.sec.android.appwidget.widgetinfo"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    if-eqz v18, :cond_8

    :cond_1
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v25

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    :cond_2
    :goto_1
    const/16 v27, 0x0

    const-string v28, "supportCellSizes"

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    if-lez v21, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mValidSizes:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, v19

    array-length v10, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_7

    aget-object v17, v4, v8

    const/16 v27, 0x78

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    add-int/lit8 v27, v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    const/16 v27, 0x0

    aget v27, v5, v27

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    const/16 v27, 0x1

    aget v27, v5, v27

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/AppWidgetItem;->mValidSizes:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput v23, v28, v29

    const/16 v29, 0x1

    aput v24, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v0, v23

    if-le v0, v14, :cond_5

    move/from16 v14, v23

    :cond_5
    move/from16 v0, v24

    if-le v0, v15, :cond_6

    move/from16 v15, v24

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    if-lez v14, :cond_8

    if-lez v15, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setMaxSpanXY(II)V

    :cond_8
    return-void
.end method
