.class Lcom/android/internal/app/ResolverActivity$4;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const-string v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # setter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I
    invoke-static {v1, v6}, Lcom/android/internal/app/ResolverActivity;->access$1002(Lcom/android/internal/app/ResolverActivity;I)I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/internal/app/ResolverActivity;->RECENT_CONTACTS_LIST_MAX_COUNT:I
    invoke-static {}, Lcom/android/internal/app/ResolverActivity;->access$1300()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recentgroupdataids"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mGridRecentHistory:Landroid/widget/HorizontalListView;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1800(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/HorizontalListView;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$1900(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/android/internal/app/ResolverActivity;->addRecentHistoryGridView(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$2000(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recentgroupnames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recentgroupdataids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1500(Lcom/android/internal/app/ResolverActivity;)[J

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recentgroupcontactids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1600(Lcom/android/internal/app/ResolverActivity;)[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recentgroupcount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemPhoneNum:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1700(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recentphonenumbers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recentgroupthumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    # operator++ for: Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$1008(Lcom/android/internal/app/ResolverActivity;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v1, "ResolverActivity"

    const-string v2, "Thumb is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
