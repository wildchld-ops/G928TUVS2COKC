.class Lcom/android/systemui/recents/RecentsActivity$6;
.super Landroid/database/ContentObserver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recents/RecentsActivity;->access$800(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v0, v3, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->onChangeMultiwindowEnabled()V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity$6;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/recents/RecentsActivity;->access$800(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_keyboard"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    iput-boolean v1, v3, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMobileKeyboardAttached:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
