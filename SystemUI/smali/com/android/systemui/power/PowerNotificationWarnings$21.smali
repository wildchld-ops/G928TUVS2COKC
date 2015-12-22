.class Lcom/android/systemui/power/PowerNotificationWarnings$21;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$21;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$21;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.systemui.power_overheat_shutdown"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "OverheatShutdown"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$21;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.power.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "PowerUI.Notification"

    const-string v3, "overheat shutdown"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
