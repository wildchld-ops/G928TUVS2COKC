.class Lcom/android/phone/photoring/PhotoRingScreen$6;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Lcom/android/phone/photoring/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/photoring/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 10

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ICallMessageNetworkListener is called ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") on PhotoRingScreen"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/photoring/PhotoRingScreen$18;->$SwitchMap$com$android$phone$photoring$CallMessageConstants$RequestType:[I

    invoke-virtual {p1}, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string v8, "Recieved etc type: not handled here"

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1000(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    const-string v7, "result"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "0019"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x1

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->bUnregierShowme:Z
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$602(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    :cond_1
    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recieved GET_CONTENT_SPEC_CALL:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/photoring/PhotoRingScreen;->access$700()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/phone/photoring/PhotoringUtil;->setContentSpecFromBundle(Landroid/os/Bundle;)V

    sget-object v7, Lcom/android/phone/photoring/PhotoringUtil;->contentSpec:Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;

    iget v7, v7, Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;->video_editing_duration:I

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/phone/photoring/PhotoringUtil;->contentSpec:Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;

    iget v7, v7, Lcom/android/phone/photoring/PhotoringUtil$ContentSpec;->video_editing_duration:I

    mul-int/lit16 v7, v7, 0x3e8

    sput v7, Lcom/android/phone/photoring/PhotoRingScreen;->VIDEO_DURATION_LIMIT:I

    goto :goto_0

    :cond_2
    const-string v7, "bundle not null"

    goto :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$302(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_3
    if-eqz p2, :cond_8

    const-string v7, "result"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recieved UPLOAD_CONTENT_CALL:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/photoring/PhotoRingScreen;->access$700()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    const-string v7, "0000"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string v8, "content_url"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$802(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$900(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call setRealtimeServiceInfoCall message : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1000(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mPM:Lcom/android/phone/photoring/PhotoRingMgr;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$200(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1100(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$800(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v3, v9}, Lcom/android/phone/photoring/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v7, v6

    goto :goto_2

    :cond_5
    const-string v7, "0600"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const v8, 0x7f0a05e7

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1400(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const v8, 0x7f0a06ea

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1400(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const v8, 0x7f0a05e7

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1400(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    if-nez p2, :cond_9

    const/4 v7, 0x0

    :goto_3
    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v7, "errMsg"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :pswitch_2
    if-eqz p2, :cond_e

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recieved SET_REALTIME_SERVICEINFO_CALL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1000(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    const-string v7, "result"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string v8, "chg_url"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->chgUrl:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1602(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->chgUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1600(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringUtil;->setChgUrl(Ljava/lang/String;)V

    const-string v7, "0000"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$302(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_a
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->placeCallIncludeMessage()V
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1700(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_b
    const-string v7, "0020"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v8}, Lcom/android/phone/photoring/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a06ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1800(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v7, "0600"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const v8, 0x7f0a06ea

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1400(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const v8, 0x7f0a05e7

    iget-object v9, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1400(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_e
    iget-object v8, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    if-nez p2, :cond_f

    const/4 v7, 0x0

    :goto_4
    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v7, "errMsg"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :pswitch_3
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$300(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$302(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_10
    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1900(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "dl_result"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->needDownContent:Z
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1902(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    if-eqz v5, :cond_14

    const-string v7, "dl_path"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2000(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "image/*"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v7, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->finish()V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x0

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->bShowOnly:Z
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2002(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    goto/16 :goto_0

    :cond_11
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "video/*"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "from_photoring_to_videoplayer"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    :catch_0
    move-exception v1

    const-string v7, "PhotoRingScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t show image/video "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_12
    invoke-static {v4}, Lcom/android/phone/photoring/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const-string v8, "/data/data/com.android.phone/files/photoring_data.png"

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$102(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x1

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2102(Lcom/android/phone/photoring/PhotoRingScreen;I)I

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2200(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_13
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # getter for: Lcom/android/phone/photoring/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$400(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "photoring_data.png"

    invoke-static {v7, v4, v8}, Lcom/android/phone/photoring/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/android/phone/photoring/PhotoRingScreen;->access$102(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    const/4 v8, 0x2

    # setter for: Lcom/android/phone/photoring/PhotoRingScreen;->mContentType:I
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2102(Lcom/android/phone/photoring/PhotoRingScreen;I)I

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    sput-object v7, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUriVideos : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/photoring/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$500(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->setImageToView()V
    invoke-static {v7}, Lcom/android/phone/photoring/PhotoRingScreen;->access$2200(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_14
    const v0, 0x7f0a05f0

    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    const v0, 0x7f0a05f1

    :cond_15
    iget-object v7, p0, Lcom/android/phone/photoring/PhotoRingScreen$6;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v8, Lcom/android/phone/photoring/PhotoRingScreen$6$1;

    invoke-direct {v8, p0}, Lcom/android/phone/photoring/PhotoRingScreen$6$1;-><init>(Lcom/android/phone/photoring/PhotoRingScreen$6;)V

    # invokes: Lcom/android/phone/photoring/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v7, v0, v8}, Lcom/android/phone/photoring/PhotoRingScreen;->access$1400(Lcom/android/phone/photoring/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
