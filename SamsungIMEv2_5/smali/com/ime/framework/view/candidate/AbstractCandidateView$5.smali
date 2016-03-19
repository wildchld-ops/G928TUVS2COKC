.class Lcom/ime/framework/view/candidate/AbstractCandidateView$5;
.super Ljava/lang/Object;
.source "AbstractCandidateView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateView;->showMobileKeyboardLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$5;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "SamsungIME_MKDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "posiveLiestner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$5;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$100(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$5;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-class v1, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    return-void
.end method
