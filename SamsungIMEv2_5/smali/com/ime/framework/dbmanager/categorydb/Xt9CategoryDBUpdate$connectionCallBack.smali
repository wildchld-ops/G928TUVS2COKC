.class Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;
.super Ljava/lang/Object;
.source "Xt9CategoryDBUpdate.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "connectionCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;


# direct methods
.method private constructor <init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V

    return-void
.end method


# virtual methods
.method public connected(II)V
    .locals 0

    return-void
.end method

.method public connectionStatus(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$100(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$500(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$500(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$102(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$300(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$500(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$500(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$302(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$400(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$500(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$500(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$402(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$600(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$600(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;->onRefreshComplete(I)V

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # invokes: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->downloadPendingDownloadDBs()V
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$700(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$600(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;
    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$600(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;->onRefreshComplete(I)V

    goto :goto_0
.end method

.method public disconnected(I)V
    .locals 0

    return-void
.end method
