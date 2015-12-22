.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->indexList:[I
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$302([I)[I

    const/4 v14, 0x0

    const/4 v12, 0x0

    :goto_0
    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->indexList:[I
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$300()[I

    move-result-object v2

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1
    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getFingerprintId(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Landroid/os/PersonaManager;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$400()Landroid/os/PersonaManager;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Landroid/os/PersonaManager;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$400()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->indexList:[I
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$300()[I

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PersonaManager;->setFingerprintIndex(IZ[I)V

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPm:Landroid/os/PersonaManager;
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$400()Landroid/os/PersonaManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2, v11}, Landroid/os/PersonaManager;->setFingerprintHash(ILjava/util/List;)V

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v3, 0x7f0a10a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v6, v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v7, 0x7f0a109b

    invoke-virtual {v6, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    const/4 v1, 0x0

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->indexList:[I
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$302([I)[I

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->arrList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void

    :cond_3
    const-string v1, "ChooseLockGenericFragment"

    const-string v2, "KNOX2.4 finger : personamanger is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setKeepEnrollSession(Z)V

    const-string v1, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v13

    const-string v1, "fingerIndex"

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    const-string v2, "ChooseLockGeneric"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v13, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->setKeepEnrollSession(Z)V

    goto :goto_3

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v2, 0x7f0a10a2

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromDirectSet:Z
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$600(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$700(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->broadcastFingerprintLockEnabled()V
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$800(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "screen-lock enabled : fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromDirectSet:Z
    invoke-static {v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$602(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Z)Z

    goto/16 :goto_3

    :cond_7
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v1, "password"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "request_template_index_list"

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->indexList:[I
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$300()[I

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->identifyFinger(Landroid/os/Bundle;)I
    invoke-static {v1, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$900(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/os/Bundle;)I

    move-result v15

    const/4 v1, -0x4

    if-ne v15, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2$2;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    iget-object v1, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showDatabaseFailureDialog()V
    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1000(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    goto/16 :goto_3

    :cond_8
    const-string v1, "ChooseLockGenericFragment"

    const-string v2, "identifyFinger called "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method
