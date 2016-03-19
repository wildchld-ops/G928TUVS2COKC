.class Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/util/CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->installPreloadLanguagePack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # setter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->downloadingLPCount:I
    invoke-static {v2, v5}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$902(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)I

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$700()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V
    invoke-static {v2, v4}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1000(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$700()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    new-instance v3, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$1;

    invoke-direct {v3, p0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$1;-><init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;)V

    invoke-virtual {v2, v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->countDownloadingLanguagePack(Z)V
    invoke-static {v2, v4}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1000(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)V

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$700()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    new-instance v3, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;

    invoke-direct {v3, p0, v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10$2;-><init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;Lcom/touchtype_fluency/util/LanguagePack;)V

    invoke-virtual {v2, v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-boolean v2, v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isClearLPConf:Z

    if-eqz v2, :cond_4

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SW] forceRefresh - isClearLPConf : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-boolean v4, v4, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isClearLPConf:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$700()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iget-object v3, v3, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V

    iget-object v2, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$10;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iput-boolean v5, v2, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->isClearLPConf:Z

    :cond_4
    return-void
.end method
