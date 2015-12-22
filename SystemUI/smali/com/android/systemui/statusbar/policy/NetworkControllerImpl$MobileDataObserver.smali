.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMobileDataEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method
