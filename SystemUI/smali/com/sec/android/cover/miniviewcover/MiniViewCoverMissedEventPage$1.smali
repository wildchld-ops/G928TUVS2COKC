.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;
.super Ljava/lang/Object;
.source "MiniViewCoverMissedEventPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setupChildViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isKeyGuardMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MiniViewCoverMissedEventPage"

    const-string v3, "onItemClick - isKeyguardSecure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setPendingIntent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    invoke-static {v2, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    sget-object v3, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V

    :goto_0
    return-void

    :cond_0
    iget v2, v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "missed_call"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MiniViewCoverMissedEventPage"

    const-string v3, "onItemClick - isTPhoneEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->setPendingIntent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    invoke-static {v2, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    sget-object v3, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->showCoverOpenPopup(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->onItemClick(I)V

    goto :goto_0
.end method
