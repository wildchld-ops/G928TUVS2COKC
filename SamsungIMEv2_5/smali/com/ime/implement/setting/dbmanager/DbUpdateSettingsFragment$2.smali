.class Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;
.super Ljava/lang/Object;
.source "DbUpdateSettingsFragment.java"

# interfaces
.implements Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->createAvailableDBPref(Ljava/lang/String;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pref:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    iput-object p2, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->val$pref:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    iput-object p3, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUpdatable(Z)V
    .locals 0

    return-void
.end method

.method public onDownloadSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mAvailableDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$200(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->val$pref:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->val$pref:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setOrder(I)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->val$pref:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    sget-byte v1, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setDisplayStyle(B)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->mDownloadedDbs:Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;
    invoke-static {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment;)Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->val$pref:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/dbmanager/DbScanningPrefrence;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdateSettingsFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
