.class Lcom/ime/implement/view/candidate/CandidateView$3;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/candidate/CandidateView;->getMobileKeyboardToolBarLongClickListener()Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/view/candidate/CandidateView;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/candidate/CandidateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/candidate/CandidateView$3;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView$3;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v0}, Lcom/ime/implement/view/candidate/CandidateView;->showMobileKeyboardLanguageDialog()V

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView$3;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/implement/view/candidate/CandidateView;->access$1300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    const/16 v1, -0x75

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    const/4 v0, 0x1

    return v0
.end method
