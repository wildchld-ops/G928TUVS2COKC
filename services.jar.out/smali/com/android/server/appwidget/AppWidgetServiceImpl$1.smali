.class Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, -0x2710

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStarted(I)V
    invoke-static {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onUserStopped(I)V
    invoke-static {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_0

    :cond_4
    const-string v2, "com.sec.knox.FIRST_SWITCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onKNOXStarted(I)V
    invoke-static {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_0

    :cond_5
    const-string v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onEmergencyDisabled(I)V
    invoke-static {v2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    goto :goto_0
.end method
