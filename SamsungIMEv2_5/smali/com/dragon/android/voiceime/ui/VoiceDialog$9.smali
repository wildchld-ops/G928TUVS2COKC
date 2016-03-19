.class Lcom/dragon/android/voiceime/ui/VoiceDialog$9;
.super Ljava/lang/Object;
.source "VoiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceNetworkErrorDialog(ZZ)V
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

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceDialog$9;->this$0:Lcom/dragon/android/voiceime/ui/VoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
