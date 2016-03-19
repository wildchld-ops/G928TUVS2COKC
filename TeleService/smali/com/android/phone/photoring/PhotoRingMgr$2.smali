.class Lcom/android/phone/photoring/PhotoRingMgr$2;
.super Ljava/lang/Object;
.source "PhotoRingMgr.java"

# interfaces
.implements Lcom/android/phone/photoring/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/photoring/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 31

    sget-object v27, Lcom/android/phone/photoring/PhotoRingMgr$3;->$SwitchMap$com$android$phone$photoring$CallMessageConstants$RequestType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const-string v28, "GET_CALLMESSAGE_CALL"

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v27, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const-string v27, "0000"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    const-string v27, "content_url"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_EXIST:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v29

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V
    invoke-static/range {v27 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->access$200(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const-string v28, "chg_key"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    # setter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$302(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const-string v28, "service_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    # setter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$402(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "key_photoring_mt_content_url"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static/range {v25 .. v25}, Lcom/android/phone/photoring/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    const/16 v27, 0x2e

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "/data/data/com.android.phone/files/photoring_content"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "photoring_content"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v10, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$600(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move/from16 v2, v28

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheData(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const-string v28, "use cached data"

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "/data/data/com.android.phone/files/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v15}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "photoring_content"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v29

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V
    invoke-static/range {v27 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->access$200(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V

    goto/16 :goto_0

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    # setter for: Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$702(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const-string v28, "make file failed"

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v27, "9998"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0a05e6

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DOWNLOAD_CONTENT incoming call content dlonload started : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z
    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->access$700(Lcom/android/phone/photoring/PhotoRingMgr;)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const/16 v24, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->prdownstarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    const-string v27, "dl_result"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_4

    const/4 v4, 0x1

    const-string v27, "dl_path"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v27, "_data"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v27, ".mp4"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_5

    sget-object v21, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    const-string v27, "width"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v27, "height"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_4
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0a05ef

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->prdownstarted:Z

    goto/16 :goto_0

    :cond_5
    sget-object v21, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0a05ee

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_7
    const-string v27, "ims_support_photo_ring"

    invoke-static/range {v27 .. v27}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$700(Lcom/android/phone/photoring/PhotoRingMgr;)Z

    move-result v27

    if-eqz v27, :cond_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingMgr;->mIncomingCallContentDownloadStarted:Z
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$702(Lcom/android/phone/photoring/PhotoRingMgr;Z)Z

    if-eqz p2, :cond_10

    const-string v27, "dl_result"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_f

    const-string v27, "dl_path"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v27, "feature_ktt"

    invoke-static/range {v27 .. v27}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "downloaded contentUrl : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "key_photoring_mt_content_url"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "photoring_content"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/phone/photoring/PhotoRingMgr;->prcheckmcidstarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "photoring_content"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "downloaded path : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v29

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->updateState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V
    invoke-static/range {v27 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->access$200(Lcom/android/phone/photoring/PhotoRingMgr;Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;Z)V

    const-string v27, "feature_lgt"

    invoke-static/range {v27 .. v27}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$300(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v28, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$600(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v29, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_svc_type:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/phone/photoring/PhotoRingMgr;->access$400(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v30, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_chg_key:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->access$300(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v27 .. v30}, Lcom/android/phone/photoring/PhotoRingMgr;->getCallMessageChgCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getServiceType()I

    move-result v27

    if-nez v27, :cond_0

    const-string v27, ".mp4"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_c

    const/16 v27, 0x1

    :goto_5
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoringUtil;->getNewFileName(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/PhotoringUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v20, Lcom/android/phone/photoring/PhotoRingDB;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/phone/photoring/PhotoRingDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$600(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheDataByCTN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    const-string v28, "number exist in cache DB update"

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "/data/data/com.android.phone/files/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->deleteContentFile(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$600(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->updateCacheData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/photoring/PhotoRingDB;->close()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getChgUrl()Ljava/lang/String;

    move-result-object v28

    # setter for: Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$802(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mcid_chg_key:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$800(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->getCallMessageChgCall()V

    goto/16 :goto_4

    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_5

    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/photoring/PhotoRingDB;->getCacheCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "number not exist in cache DB cacheDB count : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const/16 v27, 0xa

    move/from16 v0, v27

    if-ne v5, v0, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/photoring/PhotoRingDB;->deleteOneItem()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "/data/data/com.android.phone/files/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->deleteContentFile(Ljava/lang/String;)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->photoring_rcv_num:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$600(Lcom/android/phone/photoring/PhotoRingMgr;)Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingDB;->insertCacheData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    const-string v27, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "errCode : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    # invokes: Lcom/android/phone/photoring/PhotoRingMgr;->log(Ljava/lang/String;)V
    invoke-static/range {v27 .. v28}, Lcom/android/phone/photoring/PhotoRingMgr;->access$100(Lcom/android/phone/photoring/PhotoRingMgr;Ljava/lang/String;)V

    const-string v27, "9999"

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0a05f4

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    const-string v27, "feature_lgt"

    invoke-static/range {v27 .. v27}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0a05f3

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    const-string v27, "feature_ktt"

    invoke-static/range {v27 .. v27}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0a06e6

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoRingMgr$2;->this$0:Lcom/android/phone/photoring/PhotoRingMgr;

    move-object/from16 v27, v0

    # getter for: Lcom/android/phone/photoring/PhotoRingMgr;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v27 .. v27}, Lcom/android/phone/photoring/PhotoRingMgr;->access$500(Lcom/android/phone/photoring/PhotoRingMgr;)Lcom/android/phone/PhoneGlobals;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0a05f3

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
