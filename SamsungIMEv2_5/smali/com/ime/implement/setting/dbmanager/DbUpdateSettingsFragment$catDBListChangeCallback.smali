.class Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;
.super Ljava/lang/Object;
.source "DbUpdateSettingsFragment.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "catDBListChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshComplete(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-ne p1, v4, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$200(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setScanning(Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # operator++ for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$008(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)I

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$000(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setScanning(Z)V

    :cond_1
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$600(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDownloadedDictList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->setUpdateStatusByDownloadList(Ljava/util/List;)V
    invoke-static {v2, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$700(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Ljava/util/List;)V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateAvailableDBGroup()V
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$400(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    invoke-virtual {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0d038b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    goto :goto_0
.end method

.method public onRemovedDictionaries(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->updateAvailableDBGroup()V
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$400(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$catDBListChangeCallback;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->removeDownloadPrefrence(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$500(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
