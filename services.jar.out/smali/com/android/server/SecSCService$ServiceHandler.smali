.class final Lcom/android/server/SecSCService$ServiceHandler;
.super Landroid/os/Handler;
.source "SecSCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecSCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCService;


# direct methods
.method public constructor <init>(Lcom/android/server/SecSCService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecSCService$ServiceHandler;->this$0:Lcom/android/server/SecSCService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
