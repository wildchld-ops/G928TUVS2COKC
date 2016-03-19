.class Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;
.super Ljava/lang/Object;
.source "DbUpdateSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

.field final synthetic val$acMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    iput-object p2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->val$acMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->val$acMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getTosString()Ljava/lang/String;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->val$acMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->acceptTos()V

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
    invoke-static {v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$600(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
    invoke-static {v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$600(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->initDownloadService()V

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createAvailableDBGroup()V
    invoke-static {v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$1000(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    invoke-static {}, Lcom/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runLivingKoreanLanguage()V

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->runLivingAlphaLanguage()V

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$8;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    const/4 v2, 0x0

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateScreenByNetworkStatus(Z)V
    invoke-static {v1, v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$800(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Z)V

    return-void
.end method
