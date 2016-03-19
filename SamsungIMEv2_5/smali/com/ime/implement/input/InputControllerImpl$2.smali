.class Lcom/ime/implement/input/InputControllerImpl$2;
.super Ljava/lang/Object;
.source "InputControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/input/InputControllerImpl;


# direct methods
.method constructor <init>(Lcom/ime/implement/input/InputControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/input/InputControllerImpl$2;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl$2;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/implement/input/InputControllerImpl;->access$1400(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl$2;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # invokes: Lcom/ime/implement/input/InputControllerImpl;->isLanguageEnKoOnKorMode()Z
    invoke-static {v0}, Lcom/ime/implement/input/InputControllerImpl;->access$1500(Lcom/ime/implement/input/InputControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl$2;->this$0:Lcom/ime/implement/input/InputControllerImpl;

    # getter for: Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/implement/input/InputControllerImpl;->access$1600(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    const-string v1, "S010"

    const-string v2, "Korean-English key"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
