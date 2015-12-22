.class Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgSendHandoverNotification"
.end annotation


# instance fields
.field private mNetworkType:I

.field private mResult:Z

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;ZI)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->mResult:Z

    iput v0, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->mNetworkType:I

    iput-boolean p2, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->mResult:Z

    iput p3, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->mNetworkType:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->this$0:Lcom/sec/epdg/EpdgService;

    iget-boolean v1, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->mResult:Z

    iget v2, p0, Lcom/sec/epdg/EpdgService$EpdgSendHandoverNotification;->mNetworkType:I

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgService;->access$4500(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    return-void
.end method
