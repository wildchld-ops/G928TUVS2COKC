.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 17

    const/4 v4, 0x0

    const-string v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "SmsDefaultDialog"

    const-string v14, "No phone, no SMS"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v2, 0x0

    if-eqz v11, :cond_1

    :try_start_0
    const-string v13, "com.android.mms"

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v13, "SmsDefaultDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ai is not null get messageAppName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-nez v13, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v2, 0x0

    const-string v13, "SmsDefaultDialog"

    const-string v14, "Exception occur ai is null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const v13, 0x7f0a12d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    iget-object v13, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v14, v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v6, 0x1

    :cond_5
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModelWithoutSecMessage()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v5, 0x1

    :cond_6
    const-string v13, "com.android.mms"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    if-eqz v6, :cond_9

    const v13, 0x7f0a1286

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :goto_4
    if-eqz v8, :cond_e

    if-eqz v4, :cond_b

    if-nez v6, :cond_7

    if-eqz v5, :cond_a

    :cond_7
    const v13, 0x7f0a1287

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_5
    if-eqz v6, :cond_12

    const v13, 0x7f0a0047

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v13, 0x7f0a0048

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    :goto_6
    move-object/from16 v0, p0

    iput-object v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iput-object v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const v13, 0x7f0a0709

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_a
    const v13, 0x7f0a070a

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_b
    if-nez v6, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    const v13, 0x7f0a1287

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_d
    const v13, 0x7f0a1284

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_e
    if-eqz v4, :cond_f

    const v13, 0x7f0a070b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_f
    if-nez v6, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    const v13, 0x7f0a070b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_11
    const v13, 0x7f0a1284

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_12
    const v13, 0x7f0a07c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v13, 0x7f0a07c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_6
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    :cond_0
    return-void
.end method
