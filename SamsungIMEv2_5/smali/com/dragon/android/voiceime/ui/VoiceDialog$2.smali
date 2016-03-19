.class Lcom/dragon/android/voiceime/ui/VoiceDialog$2;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceTosDialog()V
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

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$2;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$2;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->dismissVoiceTosDialog()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$2;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mSp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$000(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_dragon_voice_legal_information_execution"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$2;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceLegalInfomation()V

    :cond_0
    return-void
.end method
