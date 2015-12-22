.class Lcom/android/phone/CallLockSettings$2;
.super Landroid/os/Handler;
.source "CallLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLockSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/CallLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    # getter for: Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;
    invoke-static {v0}, Lcom/android/phone/CallLockSettings;->access$000(Lcom/android/phone/CallLockSettings;)Lcom/android/phone/EditPinPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    # getter for: Lcom/android/phone/CallLockSettings;->mPinDialog:Lcom/android/phone/EditPinPreference;
    invoke-static {v0}, Lcom/android/phone/CallLockSettings;->access$000(Lcom/android/phone/CallLockSettings;)Lcom/android/phone/EditPinPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->onDialogClosed(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallLockSettings$2;->this$0:Lcom/android/phone/CallLockSettings;

    invoke-virtual {v0}, Lcom/android/phone/CallLockSettings;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
