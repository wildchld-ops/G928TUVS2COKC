.class Lcom/android/systemui/recents/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_hide_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "recents.triggeredFromAltTab"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "recents.triggeredFromHomeKey"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)Z

    goto :goto_0

    :cond_3
    const-string v1, "action_toggle_recents_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0

    :cond_4
    const-string v1, "action_start_enter_animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsActivity;->mBlockBackKeyEvent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivity;->mCanDismissRecents:Z

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity$1;->setResultCode(I)V

    goto :goto_0
.end method
