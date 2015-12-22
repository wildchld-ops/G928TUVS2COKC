.class Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;
.super Landroid/os/Handler;
.source "DriveLinkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const v3, 0x7f08006e

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v0, ""

    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    const v2, 0x7f08006d

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$000(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$100(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$400(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$500(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$502(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;Ljava/util/Locale;)Ljava/util/Locale;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$100(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$300(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-virtual {v1, v3}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$000(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$100(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-virtual {v1, v3}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;->this$0:Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    # getter for: Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->access$100(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
