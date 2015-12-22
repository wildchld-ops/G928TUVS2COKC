.class Lcom/android/incallui/SecModifyCallProcessor$3;
.super Ljava/lang/Object;
.source "SecModifyCallProcessor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecModifyCallProcessor;->updateIncomingModifyCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecModifyCallProcessor;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecModifyCallProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecModifyCallProcessor$3;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v2, 0x65

    const-string v0, "SecModifyCallProcessor"

    const-string v1, "handle MODIFY_CALL_PROMPT_CONFIRMED, proceed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    :cond_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$3;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$000(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$3;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$000(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$3;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$300(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$3;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$300(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$3;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->acceptModifyCall()V

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$3;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->setIsShowingModifyCallDialog(Z)V

    return-void
.end method
