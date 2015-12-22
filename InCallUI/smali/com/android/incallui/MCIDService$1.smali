.class Lcom/android/incallui/MCIDService$1;
.super Lcom/android/services/telephony/common/IMCIDService$Stub;
.source "MCIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/MCIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/MCIDService;


# direct methods
.method constructor <init>(Lcom/android/incallui/MCIDService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/MCIDService$1;->this$0:Lcom/android/incallui/MCIDService;

    invoke-direct {p0}, Lcom/android/services/telephony/common/IMCIDService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePhotoringState(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/MCIDService$1;->this$0:Lcom/android/incallui/MCIDService;

    # getter for: Lcom/android/incallui/MCIDService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/MCIDService;->access$000(Lcom/android/incallui/MCIDService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/MCIDService$1;->this$0:Lcom/android/incallui/MCIDService;

    # getter for: Lcom/android/incallui/MCIDService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/MCIDService;->access$000(Lcom/android/incallui/MCIDService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
