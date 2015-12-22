.class Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside onReceive intent value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.android.scover.themecenter.COVER_THEME_APPLY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const-string/jumbo v8, "packageName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->mCoverPackage:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "theme.installer.action"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "theme.uninstaller.action"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    const-string/jumbo v7, "package"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "index"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const-string v8, "category"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    const-string/jumbo v7, "title"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside inside onReceive intent value eventCategory => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",packageName "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mSelectedEventDetails=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside inside if cond "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v10, v10, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->mSelectedEventDetails:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "theme.installer.action"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside inside if cond again eventMasterPackageName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",check next if"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    const-string v10, "MyEvent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    const-string v8, "MyEvent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2700(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    :goto_1
    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput v3, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentActiveEventList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->showEventBubble(Ljava/lang/String;)V
    invoke-static {v7, v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-object v6, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    const-string v8, "MyEvent"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->myEventTitlePackageMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2700(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v7, v7, Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentActiveEventList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v6, :cond_0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/4 v7, 0x2

    iput v7, v4, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "packageName"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "eventCategory"

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->eventCategory:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "index"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
