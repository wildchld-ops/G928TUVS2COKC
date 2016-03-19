.class Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/DocumentServiceInternal$1;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DocumentServiceInternal$1;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;->this$1:Lcom/nuance/connect/internal/DocumentServiceInternal$1;

    iput-object p2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal$1$1$1;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal$1$1;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
