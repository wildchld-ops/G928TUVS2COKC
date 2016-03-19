.class Lcom/dragon/android/voiceime/ui/VoiceDialog$5;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceLegalInfomation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

.field final synthetic val$cText:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    iput-object p2, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;->val$cText:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;->val$cText:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mSp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$000(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_dragon_voice_legal_information_execution"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # invokes: Lcom/dragon/android/voiceime/ui/VoiceDialog;->checkVoiceNetWorkDialog()Z
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$400(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$5;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$200(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->startVoiceListening()V

    :cond_1
    return-void
.end method
