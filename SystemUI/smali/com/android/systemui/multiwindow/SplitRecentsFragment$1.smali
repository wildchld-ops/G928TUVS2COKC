.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SplitRecentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_hide_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    # invokes: Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V
    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->access$000(Z)V

    const-string v1, "recents.triggeredFromAltTab"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToFocusedTaskOrHome(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "recents.triggeredFromHomeKey"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHome(Z)Z

    goto :goto_0

    :cond_2
    const-string v1, "action_toggle_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1, v3}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0

    :cond_3
    const-string v1, "action_start_enter_animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onEnterAnimationTriggered()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;->setResultCode(I)V

    goto :goto_0
.end method
