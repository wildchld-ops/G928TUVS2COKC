.class Lcom/ime/framework/acmanager/ACDownloadManager$2;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/acmanager/ACDownloadManager;->runLanguageDLCases()V
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

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public availableLanguages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACDownloadManager"

    const-string v1, "exiting... empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available Languages ###: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$102(Lcom/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$202(Lcom/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$302(Lcom/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACDownloadManager downloadable mDownloadableLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$100(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACDownloadManager downloaded mDownloadedLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$200(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACDownloadManager updateable mUpdateableLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$300(Lcom/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # invokes: Lcom/ime/framework/acmanager/ACDownloadManager;->setSharedPreferencesList()V
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$400(Lcom/ime/framework/acmanager/ACDownloadManager;)V

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mACLanguagesSettings:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->mACLanguagesSettings:Lcom/ime/implement/setting/ACLanguagesSettings;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$500(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/ime/implement/setting/ACLanguagesSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/implement/setting/ACLanguagesSettings;->updateLPlist()V

    goto/16 :goto_0
.end method

.method public downloadedLanguages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaded Languages ###: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatableLanguages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updateable Languages ###: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v2}, Lcom/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
