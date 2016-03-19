.class Lcom/ime/framework/acmanager/ACDownloadManager$4;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/acmanager/ACDownloadManager;->getKeyboardLanguageManager()Lcom/nuance/swypeconnect/ac/ACManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager$4;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(II)V
    .locals 3

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACConnectionCallback.connected(): connectionType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$4;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$4;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->connected(II)V

    :cond_0
    return-void
.end method

.method public connectionStatus(ILjava/lang/String;)V
    .locals 3

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runDLCases: ACConnectionCallback.connectionStatus() status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$4;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$4;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->connectionStatus(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disconnected(I)V
    .locals 3

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runDLCases: ACConnectionCallback.disconnected(), received disconnected event for connectionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lets toggle to connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$4;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$4;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mChineseDictManager:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$600(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->disconnected(I)V

    :cond_0
    return-void
.end method
