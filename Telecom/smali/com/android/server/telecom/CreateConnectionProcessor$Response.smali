.class Lcom/android/server/telecom/CreateConnectionProcessor$Response;
.super Ljava/lang/Object;
.source "CreateConnectionProcessor.java"

# interfaces
.implements Lcom/android/server/telecom/CreateConnectionResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CreateConnectionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field final synthetic this$0:Lcom/android/server/telecom/CreateConnectionProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CreateConnectionProcessor;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->mService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    return-void
.end method

.method private shouldFallbackToNoConnectionManager(Landroid/telecom/DisconnectCause;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v2}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$100(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectionManagerPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;
    invoke-static {v3}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$200(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v2}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$100(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    const-string v3, "Connection manager declined to handle the call, falling back to not using a connection manager"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "createConnection"

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->isServiceValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    const-string v3, "Connection manager unbound while trying create a connection, falling back to not using a connection manager"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    const-string v1, "Connection failed: (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # setter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mLastErrorDisconnectCause:Landroid/telecom/DisconnectCause;
    invoke-static {v0, p1}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$302(Lcom/android/server/telecom/CreateConnectionProcessor;Landroid/telecom/DisconnectCause;)Landroid/telecom/DisconnectCause;

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->startCallFailDialogActivity(Landroid/telecom/DisconnectCause;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->shouldFallbackToNoConnectionManager(Landroid/telecom/DisconnectCause;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # setter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mShouldUseConnectionManager:Z
    invoke-static {v0, v3}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$402(Lcom/android/server/telecom/CreateConnectionProcessor;Z)Z

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->process()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # invokes: Lcom/android/server/telecom/CreateConnectionProcessor;->attemptNextPhoneAccount()V
    invoke-static {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$500(Lcom/android/server/telecom/CreateConnectionProcessor;)V

    goto :goto_0
.end method

.method public handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;
    invoke-static {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$000(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/CreateConnectionResponse;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->mService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v1}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$100(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->abort(Lcom/android/server/telecom/Call;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    # getter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;
    invoke-static {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$000(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/CreateConnectionResponse;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor$Response;->this$0:Lcom/android/server/telecom/CreateConnectionProcessor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;
    invoke-static {v0, v1}, Lcom/android/server/telecom/CreateConnectionProcessor;->access$002(Lcom/android/server/telecom/CreateConnectionProcessor;Lcom/android/server/telecom/CreateConnectionResponse;)Lcom/android/server/telecom/CreateConnectionResponse;

    goto :goto_0
.end method
