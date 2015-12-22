.class Lcom/android/systemui/recents/RecentsActivity$9;
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

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$9;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$9;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, v1, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$9;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recents/RecentsActivity;->access$800(Lcom/android/systemui/recents/RecentsActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "lock_to_app_enabled"

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
