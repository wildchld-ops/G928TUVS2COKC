.class public Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "HomeAppWidgetHost.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeAppWidgetHost"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    sget-boolean v1, Lcom/sec/android/app/launcher/data/AppWidgetItem;->APP_WIDGET_IS_DRAWABLE_VIEW:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0
.end method

.method public startListeningNoException()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v1, "HomeAppWidgetHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startListeningNoException() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
