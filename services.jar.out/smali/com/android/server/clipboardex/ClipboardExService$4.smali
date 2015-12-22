.class Lcom/android/server/clipboardex/ClipboardExService$4;
.super Landroid/os/Handler;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/16 v11, 0x20

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ClipboardServiceEx"

    const-string/jumbo v9, "handler msg : default"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1302(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1400(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1500(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardUIManager;->show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    :pswitch_2
    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1302(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1400(Lcom/android/server/clipboardex/ClipboardExService;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1500(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/sec/clipboard/ClipboardUIManager;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    :pswitch_3
    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/clipboard/ClipboardUIManager;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v9

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8, v9}, Lcom/android/server/clipboardex/ClipboardExService;->access$1302(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "ClipboardServiceEx"

    const-string/jumbo v9, "mCBUIManager enter case. MSG_DISMISS_DIALOG"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/ClipboardUIManager;->dismiss()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v8, "deletePath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "extraDataPath"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete intent will be called. filePath :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", extraFilePath :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.samsung.clipboardsaveservice.CLIPBOARD_DELETE_RECEIVER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v8, "deletePath"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const-string v8, "extraDataPath"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v8}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLIPBOARD_DELETE_RECEIVER : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v8, "uriPath"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_URI_RECEIVER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "uriPath"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v8}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$4;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/clipboardex/ClipboardExService;->access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLIPBOARD_COPY_URI_RECEIVER : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
