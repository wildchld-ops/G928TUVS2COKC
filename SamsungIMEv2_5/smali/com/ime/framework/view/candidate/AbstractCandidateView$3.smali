.class Lcom/ime/framework/view/candidate/AbstractCandidateView$3;
.super Ljava/lang/Object;
.source "AbstractCandidateView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$3;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$3;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$100(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
