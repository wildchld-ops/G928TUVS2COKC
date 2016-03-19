.class Lcom/dragon/android/voiceime/ui/VoiceDialog$3;
.super Landroid/os/Handler;
.source "VoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dragon/android/voiceime/ui/VoiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;


# direct methods
.method constructor <init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$100(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mTosDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$100(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$200(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getValidWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # invokes: Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceTosDialog()V
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$300(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/dragon/android/voiceime/ui/VoiceDialog$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
