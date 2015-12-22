.class final Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;
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
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f050067

    const/16 v4, 0x8

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "OnClickRemoveAllButton is blocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->mIsCloseProcessingBtnClicked:Z

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "OnClickRemoveAllButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v3, "OnClickRemoveAllButton: return"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsActivity;->access$800(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mRecentsButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowRecentApplicationShortCut:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsActivity;->access$800(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity;->mRecentsShort:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearAllCache()V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsActivity;->finishByCloseAllButton()V

    goto/16 :goto_0
.end method
