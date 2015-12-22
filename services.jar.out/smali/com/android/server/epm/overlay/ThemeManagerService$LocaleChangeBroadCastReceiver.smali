.class Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleChangeBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/epm/PluginManager;->getInstance(Landroid/content/Context;)Landroid/app/epm/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/epm/PluginManager;->getCurrentThemePackage()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocaleChangeBroadCastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->changeRingtoneTitle(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2900(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->changeRingtoneTitle(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2900(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$LocaleChangeBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->changeRingtoneTitle(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2900(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
