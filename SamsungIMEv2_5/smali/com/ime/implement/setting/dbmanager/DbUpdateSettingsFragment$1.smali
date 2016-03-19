.class Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1;
.super Ljava/lang/Object;
.source "DbUpdateSettingsFragment.java"

# interfaces
.implements Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createDownloadDBGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUpdatable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # operator++ for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$008(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)I

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mCheckUpdatableCnt:I
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$000(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->setScanning(Z)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 0

    return-void
.end method
