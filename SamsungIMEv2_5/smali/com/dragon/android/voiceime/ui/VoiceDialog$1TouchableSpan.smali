.class Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;
.super Landroid/text/style/ClickableSpan;
.source "VoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceLegalInfomation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchableSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;


# direct methods
.method constructor <init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mLegalInforDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$500(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$200(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$200(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dragon/android/voiceime/DragonTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$1TouchableSpan;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->checkVoiceTos()V

    :cond_0
    return-void
.end method
