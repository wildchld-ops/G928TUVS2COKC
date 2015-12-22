.class Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;
.super Ljava/lang/Object;
.source "SViewCoverMissedEventActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x1

    const/4 v1, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_allow_private_notifications"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_show_notifications"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v5, :cond_2

    move v1, v5

    :goto_1
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/CoverUtils;->isKeyGuardMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "SViewCoverMissedEventActivity"

    const-string v6, "onItemClick - isKeyguardSecure"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "SViewCoverMissedEventActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotiArea() can not found setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    if-ne v1, v5, :cond_5

    if-nez v4, :cond_5

    const-string v6, "SViewCoverMissedEventActivity"

    const-string v7, "onItemClick - Hide sensitive content"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    if-eqz v2, :cond_0

    iget v6, v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    if-ne v6, v5, :cond_0

    move-object v5, v2

    check-cast v5, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "missed_call"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    if-eqz v2, :cond_6

    iget v6, v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    if-nez v6, :cond_6

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v2, :cond_7

    iget v6, v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    if-ne v6, v5, :cond_7

    move-object v5, v2

    check-cast v5, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "missed_call"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V

    goto/16 :goto_2

    :cond_7
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->onItemClick(I)V

    goto/16 :goto_2
.end method
