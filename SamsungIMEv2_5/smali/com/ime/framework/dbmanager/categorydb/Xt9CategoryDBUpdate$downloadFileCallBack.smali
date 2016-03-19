.class Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;
.super Ljava/lang/Object;
.source "Xt9CategoryDBUpdate.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "downloadFileCallBack"
.end annotation


# instance fields
.field private mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

.field private mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

.field private mdbId:Ljava/lang/String;

.field final synthetic this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;


# direct methods
.method public constructor <init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    iput-object p4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)Z
    .locals 5

    const-string v2, "Xt9CategoryDBUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": downloadComplete!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->fileName:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    invoke-interface {v2, v1, v0}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->removeFromDownloadingList(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method public downloadFailed(I)V
    .locals 4

    const-string v1, "Xt9CategoryDBUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": downloadFailed(reason =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->removeFromDownloadingList(Ljava/lang/String;)V

    return-void
.end method

.method public downloadPercentage(I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    # invokes: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->inDownloadingList(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$800(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    iput p1, v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->percent:I

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v0}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public downloadStarted()V
    .locals 5

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    # invokes: Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->inDownloadingList(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->access$800(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/lang/String;)Z

    move-result v0

    const-string v3, "Xt9CategoryDBUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadStarted dbId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", has been canceled : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    const/16 v3, 0xa

    invoke-interface {v2, v3, v1}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public downloadStopped(I)V
    .locals 5

    const/4 v4, 0x3

    const-string v1, "Xt9CategoryDBUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "runCDCases: downloadStopped(reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    if-ne p1, v4, :cond_2

    :cond_0
    :goto_0
    if-eq p1, v4, :cond_1

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->this$0:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mdbId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->removeFromDownloadingList(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;->mDownloadNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    goto :goto_0
.end method
