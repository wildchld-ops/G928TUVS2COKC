.class Lcom/ime/implement/view/candidate/CandidateView$2$1;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/candidate/CandidateView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/view/candidate/CandidateView$2;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/candidate/CandidateView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/candidate/CandidateView$2$1;->this$1:Lcom/ime/implement/view/candidate/CandidateView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView$2$1;->this$1:Lcom/ime/implement/view/candidate/CandidateView$2;

    iget-object v2, v2, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/ime/implement/view/candidate/CandidateView;->access$700(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mobilekeyboard_need_empty_keyboard"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView$2$1;->this$1:Lcom/ime/implement/view/candidate/CandidateView$2;

    iget-object v2, v2, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/ime/implement/view/candidate/CandidateView;->access$800(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v2

    const/16 v3, -0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    return-void
.end method
