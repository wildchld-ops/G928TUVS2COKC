.class Lcom/dragon/android/voiceime/ui/VoiceDialog$7;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/dragon/android/voiceime/ui/VoiceDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$7;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$7;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    # getter for: Lcom/dragon/android/voiceime/ui/VoiceDialog;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->access$600(Lcom/dragon/android/voiceime/ui/VoiceDialog;)Lcom/ime/framework/repository/Repository;

    move-result-object v0

    const-string v1, "KEY_IS_DRAGON_VOICE_LAGELINFOMATION_DIALOG_SHOWN"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_0
    return v2
.end method
