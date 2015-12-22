.class Lcom/android/phone/NetworkModeSpinner$10;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$2000(Lcom/android/phone/NetworkModeSpinner;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/NetworkModeSpinner;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModeSpinner;->access$2100(Lcom/android/phone/NetworkModeSpinner;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v0, v3}, Lcom/android/phone/NetworkModeSpinner;->access$2202(Lcom/android/phone/NetworkModeSpinner;Z)Z

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # setter for: Lcom/android/phone/NetworkModeSpinner;->mTriggerChangeNetwork:Z
    invoke-static {v0, v3}, Lcom/android/phone/NetworkModeSpinner;->access$2302(Lcom/android/phone/NetworkModeSpinner;Z)Z

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUTTON_POSITIVE, mIsDisconnectingData ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mIsDisconnectingData:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModeSpinner;->access$2200(Lcom/android/phone/NetworkModeSpinner;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModeSpinner;->getPreferredNetworkType()V

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$10;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$2400(Lcom/android/phone/NetworkModeSpinner;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
