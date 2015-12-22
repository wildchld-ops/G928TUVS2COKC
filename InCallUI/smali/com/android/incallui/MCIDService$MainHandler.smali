.class Lcom/android/incallui/MCIDService$MainHandler;
.super Landroid/os/Handler;
.source "MCIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/MCIDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/MCIDService;


# direct methods
.method constructor <init>(Lcom/android/incallui/MCIDService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/incallui/MCIDService$MainHandler;->this$0:Lcom/android/incallui/MCIDService;

    invoke-virtual {p1}, Lcom/android/incallui/MCIDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/MCIDService$MainHandler;->this$0:Lcom/android/incallui/MCIDService;

    # invokes: Lcom/android/incallui/MCIDService;->executeMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/incallui/MCIDService;->access$100(Lcom/android/incallui/MCIDService;Landroid/os/Message;)V

    return-void
.end method
