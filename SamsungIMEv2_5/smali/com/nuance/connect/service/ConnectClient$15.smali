.class Lcom/nuance/connect/service/ConnectClient$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$15;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataStore()Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$15;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->defaultStore:Lcom/nuance/connect/store/PersistentDataStore;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$1100(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    return-object v0
.end method
