.class Lcom/ime/framework/view/candidate/AbstractCandidateView$1;
.super Ljava/lang/Object;
.source "AbstractCandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateView;
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

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v1

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$002(Lcom/ime/framework/view/candidate/AbstractCandidateView;Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :cond_0
    return-void
.end method
