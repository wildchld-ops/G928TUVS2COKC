.class Lcom/android/incallui/AccessoryEventHandler$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "AccessoryEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccessoryEventHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccessoryEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const-string v2, "onCoverStateChanged: ScoverState is null"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    # setter for: Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z
    invoke-static {v5, v2}, Lcom/android/incallui/AccessoryEventHandler;->access$202(Lcom/android/incallui/AccessoryEventHandler;Z)Z

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v5

    # setter for: Lcom/android/incallui/AccessoryEventHandler;->mCoverType:I
    invoke-static {v2, v5}, Lcom/android/incallui/AccessoryEventHandler;->access$302(Lcom/android/incallui/AccessoryEventHandler;I)I

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iput-object p1, v2, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v5

    # setter for: Lcom/android/incallui/AccessoryEventHandler;->mCoverColor:I
    invoke-static {v2, v5}, Lcom/android/incallui/AccessoryEventHandler;->access$402(Lcom/android/incallui/AccessoryEventHandler;I)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    const/16 v5, 0x64

    if-ne v2, v5, :cond_4

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCoverStateChanged: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    # setter for: Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z
    invoke-static {v2, v4}, Lcom/android/incallui/AccessoryEventHandler;->access$202(Lcom/android/incallui/AccessoryEventHandler;Z)Z

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v5, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_6

    move v1, v3

    :goto_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    # getter for: Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z
    invoke-static {v2}, Lcom/android/incallui/AccessoryEventHandler;->access$200(Lcom/android/incallui/AccessoryEventHandler;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverStateChanged "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isClosed : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    # getter for: Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z
    invoke-static {v4}, Lcom/android/incallui/AccessoryEventHandler;->access$200(Lcom/android/incallui/AccessoryEventHandler;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    iget-object v3, p0, Lcom/android/incallui/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/AccessoryEventHandler;

    # getter for: Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z
    invoke-static {v3}, Lcom/android/incallui/AccessoryEventHandler;->access$200(Lcom/android/incallui/AccessoryEventHandler;)Z

    move-result v3

    # invokes: Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfCoverStateChanged(Z)V
    invoke-static {v2, v3}, Lcom/android/incallui/AccessoryEventHandler;->access$500(Lcom/android/incallui/AccessoryEventHandler;Z)V

    goto/16 :goto_0

    :cond_6
    move v1, v4

    goto :goto_2
.end method
