.class Lcom/android/phone/CallFeaturesSetting$43;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$43;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$43;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$5400(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$43;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # getter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$5400(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$43;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CallFeaturesSetting;->mImsUtdialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/CallFeaturesSetting;->access$5402(Lcom/android/phone/CallFeaturesSetting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$43;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0473

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$43;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->goAdditionalCallOptions()V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$5600(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
