.class public Lcom/android/server/appwidget/AppWidgetService;
.super Lcom/android/server/SystemService;
.source "AppWidgetService.java"


# instance fields
.field private final mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    return-void
.end method

.method private setAppWidgetServiceLockinAMS()V
    .locals 2

    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getAppWidgetServiceLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setAppWidgetServiceLock(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setSafeMode(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "appwidget"

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->register(Lcom/android/server/WidgetBackupProvider;)V

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetService;->setAppWidgetServiceLockinAMS()V

    return-void
.end method
