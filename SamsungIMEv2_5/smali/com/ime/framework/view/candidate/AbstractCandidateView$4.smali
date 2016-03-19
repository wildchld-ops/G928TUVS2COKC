.class Lcom/ime/framework/view/candidate/AbstractCandidateView$4;
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

.field final synthetic val$languageIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$4;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iput-object p2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$4;->val$languageIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$4;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v1, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$4;->val$languageIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/ime/framework/common/InputManager;->setLanguage(IZ)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$4;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$100(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
