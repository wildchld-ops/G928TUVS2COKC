.class Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;
.super Ljava/lang/Object;
.source "Xt9CategoryDBUpdate.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dictionarylistCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;


# direct methods
.method private constructor <init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V

    return-void
.end method


# virtual methods
.method public availableDictionaries(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    const-string v2, "Xt9CategoryDBUpdate"

    const-string v3, "availableDictionaries callback called - show the list - "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    const-string v2, "Xt9CategoryDBUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "available dict catID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$000(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/DbSettings;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/ime/framework/dbmanager/DbSettings;->setUpdatable(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # setter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;
    invoke-static {v2, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$102(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$200(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$200(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;->onAvailableDictionaries(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public downloadedDictionaries(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    const-string v2, "Xt9CategoryDBUpdate"

    const-string v3, "downloadedDictionaries callback called - show the list - "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    const-string v2, "Xt9CategoryDBUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadList dict catID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$000(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/DbSettings;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ime/framework/dbmanager/DbSettings;->setUpdatable(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # setter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;
    invoke-static {v2, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$302(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$200(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$200(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;->onDownloadedDictionaries(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public updatableDictionaries(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    const-string v2, "Xt9CategoryDBUpdate"

    const-string v3, "updatableList callback called - show the list - "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    const-string v2, "Xt9CategoryDBUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatableList dict catID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$000(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/DbSettings;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/ime/framework/dbmanager/DbSettings;->setUpdatable(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # setter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;
    invoke-static {v2, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$402(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$200(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    # getter for: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
    invoke-static {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$200(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;->onUpdatableDictionaries(Ljava/util/List;)V

    :cond_1
    return-void
.end method
