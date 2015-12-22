.class public Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CoverMissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverMissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotiMissedEventsAdapter"
.end annotation


# instance fields
.field private mMissedEventItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedEventItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter$1;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItemComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItemComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearMissedEvent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    iget v0, v0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, -0x1

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    # getter for: Lcom/sec/android/cover/manager/CoverMissedEventManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->access$100(Lcom/sec/android/cover/manager/CoverMissedEventManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    iget v4, v4, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    iget v4, v4, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    packed-switch v4, :pswitch_data_1

    :cond_1
    :goto_1
    return-object p2

    :pswitch_1
    sget v4, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_remote_item:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    # getter for: Lcom/sec/android/cover/manager/CoverMissedEventManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->access$100(Lcom/sec/android/cover/manager/CoverMissedEventManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKeyGuardMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getSecureRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_1

    sget v4, Lcom/sec/android/sviewcover/R$id;->missed_remote_item:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    # getter for: Lcom/sec/android/cover/manager/CoverMissedEventManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->access$100(Lcom/sec/android/cover/manager/CoverMissedEventManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1, v6, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onItemClick(I)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    if-eqz v2, :cond_0

    const-string v3, "MissedEventManager"

    const-string v4, "onItemClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;->mMissedEventItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method
