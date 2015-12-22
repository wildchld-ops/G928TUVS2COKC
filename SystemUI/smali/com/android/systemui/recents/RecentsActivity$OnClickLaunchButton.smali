.class final Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickLaunchButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # invokes: Lcom/android/systemui/recents/RecentsActivity;->isTaskManagerInstalled()Z
    invoke-static {v5}, Lcom/android/systemui/recents/RecentsActivity;->access$600(Lcom/android/systemui/recents/RecentsActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "com.sec.android.app.taskmanager"

    :goto_0
    if-eqz v4, :cond_3

    const-string v0, "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

    :goto_1
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # invokes: Lcom/android/systemui/recents/RecentsActivity;->isControlPanelInstalled()Z
    invoke-static {v5}, Lcom/android/systemui/recents/RecentsActivity;->access$700(Lcom/android/systemui/recents/RecentsActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v6, "No Activity Not Found"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x10004000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v5}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    const-string v1, "com.sec.android.app.controlpanel"

    goto :goto_0

    :cond_3
    const-string v0, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v6, "Activity Not Found"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
