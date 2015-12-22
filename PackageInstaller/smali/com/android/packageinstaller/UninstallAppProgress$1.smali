.class Lcom/android/packageinstaller/UninstallAppProgress$1;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "android.intent.extra.RETURN_RESULT"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v14, "android.intent.extra.INSTALL_RESULT"

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_0

    const/4 v14, -0x1

    :goto_1
    invoke-virtual {v15, v14, v7}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    goto :goto_0

    :cond_0
    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I
    invoke-static {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->access$002(Lcom/android/packageinstaller/UninstallAppProgress;I)I

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    packed-switch v14, :pswitch_data_1

    :pswitch_1
    const-string v14, "UninstallAppProgress"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uninstall failed for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with code "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    const v15, 0x7f060036

    invoke-virtual {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->access$300(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->access$400(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;
    invoke-static {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->access$500(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v9, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "iw"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u200f"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v15}, Lcom/android/packageinstaller/UninstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f060044

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v19, v0

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mAppName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/packageinstaller/UninstallAppProgress;->access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v14, 0x1

    invoke-static {v2, v9, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "IS_FROM_LAUNCHER"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "Launcher"

    invoke-static {v6, v14}, Lcom/android/packageinstaller/UninstallAppProgress;->AuditLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I
    invoke-static {v15}, Lcom/android/packageinstaller/UninstallAppProgress;->access$000(Lcom/android/packageinstaller/UninstallAppProgress;)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->setResultAndFinish(I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060044

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    move-object/from16 v18, v0

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mAppName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/packageinstaller/UninstallAppProgress;->access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :pswitch_3
    const-string v14, "UninstallAppProgress"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uninstall failed because "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is a device admin"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;
    invoke-static {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->access$200(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    const v15, 0x7f060037

    invoke-virtual {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    const-string v15, "user"

    invoke-virtual {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    const-string v14, "package"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    const/16 v1, -0x2710

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_4

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    :try_start_0
    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v5, v6, v14}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5

    iget v1, v10, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    # getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;
    invoke-static {v14}, Lcom/android/packageinstaller/UninstallAppProgress;->access$200(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    const v15, 0x7f060039

    invoke-virtual {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :catch_0
    move-exception v3

    const-string v14, "UninstallAppProgress"

    const-string v15, "Failed to talk to package manager"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    const/16 v14, -0x2710

    if-ne v1, v14, :cond_7

    const-string v14, "UninstallAppProgress"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Uninstall failed for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with code "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " no blocking user"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    const v15, 0x7f060036

    invoke-virtual {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v11, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    iget-object v12, v14, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    const v15, 0x7f060038

    invoke-virtual {v14, v15}, Lcom/android/packageinstaller/UninstallAppProgress;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
