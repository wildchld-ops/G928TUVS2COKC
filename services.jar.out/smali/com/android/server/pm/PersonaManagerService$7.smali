.class Lcom/android/server/pm/PersonaManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v21, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "android.intent.extra.user_handle"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v21

    if-nez v21, :cond_0

    const-string/jumbo v21, "sys.knox.store"

    const-string v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "PersonaManagerService"

    const-string/jumbo v22, "onReceive USER_SWITCHED it is not knox container"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onReceive USER_SWITCHED in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v21

    if-nez v21, :cond_1

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v15

    if-eqz v15, :cond_1

    array-length v0, v15

    move/from16 v21, v0

    if-lez v21, :cond_1

    const/4 v9, 0x0

    :goto_1
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    aget v22, v15, v9

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killKnoxLauncher(I)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/pm/PersonaManagerService;->access$8200(Lcom/android/server/pm/PersonaManagerService;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v21, "sys.knox.store"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "PersonaManagerService"

    const-string/jumbo v22, "onReceive USER_SWITCHED it is knox container"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    invoke-static {v0, v1, v7}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v21, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "android.intent.extra.user_handle"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onReceive USER_ADD userId = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x64

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    const/16 v21, 0xc8

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    :cond_4
    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "userId "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not Knox, so disable Knox packages"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.sec.knox.containeragent2"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.sec.knox.packageverifier"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.sec.knox.shortcutsms"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.sec.knox.switcher"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.samsung.android.bbc.fileprovider"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.samsung.knox.knoxtrustagent"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKnoxBluetoothSupported()Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$8300(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.sec.knox.bluetooth"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v21

    const-string v22, "com.sec.knox.knoxlauncher"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v8

    const-string v21, "PersonaManagerService"

    const-string/jumbo v22, "not exist card type launcher"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const-string v21, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "PersonaManagerService"

    const-string v22, "INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION onReceive"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "personaid"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    iput v14, v12, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_7
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string v21, "PersonaManagerService"

    const-string v22, "ACTION_SCREEN_OFF onReceive"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "why"

    const/16 v22, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    const/16 v22, 0xb

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_8
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "PersonaManagerService"

    const-string v22, "ACTION_SCREEN_ON onReceive"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    const/16 v22, 0x13

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_9
    const-string v21, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PersonaInfo;

    if-eqz v13, :cond_b

    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PID:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/pm/PersonaInfo;->setIsFingerReset(Z)V

    const-string/jumbo v21, "lock_settings"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    check-cast v18, Lcom/android/server/LockSettingsService;

    if-eqz v18, :cond_b

    :try_start_1
    const-string/jumbo v21, "lockscreen.password_type"

    const-wide/16 v22, 0x0

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    const v21, 0x61000

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    sget-object v22, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "KNOX Container of user "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " will be locked by changes of fingerprints."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    sget-object v22, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    const-string v21, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PersonaInfo;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/pm/PersonaManagerService;->setIsFingerAsSupplement(IZ)V

    goto :goto_4

    :cond_e
    const-string v21, "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const-string/jumbo v21, "personaid"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "on Receive : SDP_TIMEOUT personaId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    sget-object v22, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v21

    if-eqz v21, :cond_f

    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "inside onReceive() state is ACTIVE "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v23, v0

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    const/16 v22, 0x14

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    iput v14, v12, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_10
    const-string v21, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    const/16 v22, 0x18

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-string/jumbo v21, "personaid"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg1:I

    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "on Receive : LOCK_TIMEOUT personaId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v12, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_11
    const-string v21, "com.sec.knox.container.INTENT_ACTION_RESET_PWD_TIMEOUT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    const/16 v22, 0x19

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    const-string/jumbo v21, "personaid"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->arg1:I

    const-string v21, "PersonaManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "on Receive : RESET_PWD_TIMEOUT  personaId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v12, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
