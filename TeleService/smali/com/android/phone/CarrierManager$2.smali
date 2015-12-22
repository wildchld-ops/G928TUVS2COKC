.class Lcom/android/phone/CarrierManager$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "CarrierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CarrierManager;->registerScoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierManager;


# direct methods
.method constructor <init>(Lcom/android/phone/CarrierManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 6
    .param p1    # Lcom/samsung/android/sdk/cover/ScoverState;

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    # getter for: Lcom/android/phone/CarrierManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v1}, Lcom/android/phone/CarrierManager;->access$200(Lcom/android/phone/CarrierManager;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    # setter for: Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v0, v1}, Lcom/android/phone/CarrierManager;->access$102(Lcom/android/phone/CarrierManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v0, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    # getter for: Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v0}, Lcom/android/phone/CarrierManager;->access$100(Lcom/android/phone/CarrierManager;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iget-object v1, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    # getter for: Lcom/android/phone/CarrierManager;->coverState:Lcom/samsung/android/sdk/cover/ScoverState;
    invoke-static {v1}, Lcom/android/phone/CarrierManager;->access$100(Lcom/android/phone/CarrierManager;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, v0, Lcom/android/phone/CarrierManager;->mCoverType:I

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "[carrier-phone] CarrierManager"

    const-string v1, "Scover : State Open"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iput v4, v0, Lcom/android/phone/CarrierManager;->mCoverState:I

    :goto_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iget v1, v1, Lcom/android/phone/CarrierManager;->mCoverType:I

    iget-object v2, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iget v2, v2, Lcom/android/phone/CarrierManager;->mCoverState:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/TPhoneService;->sendCoverStateChanged(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "[carrier-phone] CarrierManager"

    const-string v1, "Scover : State Close"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iput v5, v0, Lcom/android/phone/CarrierManager;->mCoverState:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iget v1, v1, Lcom/android/phone/CarrierManager;->mCoverType:I

    iget-object v2, p0, Lcom/android/phone/CarrierManager$2;->this$0:Lcom/android/phone/CarrierManager;

    iget v2, v2, Lcom/android/phone/CarrierManager;->mCoverState:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/OllehPhoneService;->sendCoverStateChanged(II)V

    goto :goto_1
.end method
