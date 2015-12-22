.class Lcom/android/internal/app/ResolverActivity$1;
.super Landroid/os/Handler;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mDeviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->checkNearbyDeviceWithRecents(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z
    invoke-static {v1, v0}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->addDeviceItemToList(Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    invoke-static {v1, v0}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$RecentHistoryListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->initRecentHistoryList()V
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method
