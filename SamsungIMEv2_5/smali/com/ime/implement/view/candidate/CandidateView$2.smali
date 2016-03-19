.class Lcom/ime/implement/view/candidate/CandidateView$2;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/candidate/CandidateView;->getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;
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

    iput-object p1, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "Jinseok"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CandidateView - getMobileKeyboardToolBarClickListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S01D"

    const-string v5, "Voice"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v3

    const/16 v4, -0x78

    invoke-interface {v3, v4, v6}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$200(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S01D"

    const-string v5, "Clipboard"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v3

    const/16 v4, -0xe4

    invoke-interface {v3, v4, v6}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$400(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S01D"

    const-string v5, "Emoticon"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$500(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "mobilekeyboard_need_empty_keyboard"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$600(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v3

    const/16 v4, -0x87

    invoke-interface {v3, v4, v6}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/ime/implement/view/candidate/CandidateView$2$1;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/candidate/CandidateView$2$1;-><init>(Lcom/ime/implement/view/candidate/CandidateView$2;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$900(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S01D"

    const-string v5, "Settings"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$1000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v3

    const/16 v4, -0x79

    invoke-interface {v3, v4, v6}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$1100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S01D"

    const-string v5, "Language"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$2;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$1200(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v3

    const/16 v4, -0x6c

    invoke-interface {v3, v4, v6}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10002b
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
