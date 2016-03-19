.class Lcom/dragon/android/voiceime/ui/VoiceDialog$4;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$4;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    iput-object p2, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$4;->val$cText:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$4;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mSp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$000(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dragon_voice_legal_information_checked"

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$4;->val$cText:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
