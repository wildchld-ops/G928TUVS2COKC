.class public Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;
.super Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;
.source "AppWidgetBinder.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetBinder"


# instance fields
.field private mAllocateCallback:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

.field private mListener:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

.field private mWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mListener:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mAllocateCallback:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    return-void
.end method

.method private attachView(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;-><init>(Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;Landroid/view/View;Lcom/sec/android/app/launcher/activities/LauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onBind(ZZ)V
    .locals 5

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    const-string v2, "AppWidgetBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete Widget due to bind failed - deleteAppWidgetId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0d0016

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mListener:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mListener:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    iget v3, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    invoke-interface {v2, p1, v3}, Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;->onBind(ZI)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mAllocateCallback:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mAllocateCallback:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    iget v3, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    invoke-interface {v2, p1, v3}, Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;->onBind(ZI)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bindWidget(Lcom/sec/android/app/launcher/data/WidgetItem;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;)V
    .locals 11

    const/4 v10, 0x1

    instance-of v6, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const-string v6, "user"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v1

    iput-object p2, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mListener:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    move-object v5, p1

    check-cast v5, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    iget v6, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v10, v6}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->onBind(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    iget v6, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mWidgetId:I

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getUserId()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v10, v10}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->onBind(ZZ)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "appWidgetId"

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "appWidgetProvider"

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->registerActivityResultListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityResultListener;)V

    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public createHostView(Lcom/sec/android/app/launcher/data/AppWidgetItem;)Landroid/appwidget/AppWidgetHostView;
    .locals 6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getSpanX()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getSpanY()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;II)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->attachView(Landroid/view/View;)V

    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->onBind(ZZ)V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllocateCallback(Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->mAllocateCallback:Lcom/sec/android/app/launcher/widget/framework/WidgetBinder$IListener;

    return-void
.end method
