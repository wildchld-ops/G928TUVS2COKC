.class Lcom/android/phone/callsettings/CallBarring$13;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$13;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$13;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$1700(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$13;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$1700(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$13;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const/4 v1, 0x1

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setCallBarringState(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->access$1500(Lcom/android/phone/callsettings/CallBarring;Z)V

    return-void
.end method
