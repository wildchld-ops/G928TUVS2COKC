.class Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragonVoiceLanguageClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;->this$0:Lcom/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v1

    array-length v2, v1

    if-ge p2, v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget-object v3, v1, p2

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getId()I

    move-result v3

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->setLanguage(IZ)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/common/Language;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getVoiceRecognitionTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->updateLanguage(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v3, 0x656e4742

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->setLanguage(IZ)V

    goto :goto_0
.end method
