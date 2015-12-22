.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iput-object p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRegisterStarted:Z
    invoke-static {v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1202(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v2, "lockscreen.password_type"

    const/4 v3, -0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "skipFingerprintPassword"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v2, -0x1

    if-ne v10, v2, :cond_1

    const-string v2, "minimum_quality"

    const/4 v3, -0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    new-instance v9, Landroid/util/MutableBoolean;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I
    invoke-static {v2, v10, v9}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1300(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;ILandroid/util/MutableBoolean;)I

    move-result v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_knox"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_4

    if-eqz v13, :cond_4

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1400(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v3, v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "for_ode"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v2, "previousStage"

    const-string v3, "ChooseLockGeneric"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isFromKnoxFingerRegistered"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v14, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_4
    if-eqz v10, :cond_7

    if-nez v12, :cond_7

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1400(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v3, v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "for_ode"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    const-string v2, "previousStage"

    const-string v3, "ChooseLockGeneric"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v14, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$700(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$700(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->broadcastFingerprintLockEnabled()V
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$800(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "screen-lock enabled : fingerprint"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_8

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v3, v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v4, v4, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    :cond_8
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v3, 0x7f0a10a2

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setKeepEnrollSession(Z)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v3, 0x79

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    const v3, 0x7f0a10a5

    # invokes: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog(I)V
    invoke-static {v2, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v2, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_d

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->access$1100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1$1;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_d
    const-string v2, "ChooseLockGenericFragment"

    const-string v3, "fingeprint RESULT_FAILED. but It\'s not handled in code :( "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4$1;->this$1:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;

    iget-object v2, v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$4;->this$0:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
