.class Lcom/android/incallui/IMSCallStateTracker$1;
.super Ljava/lang/Object;
.source "IMSCallStateTracker.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/IMSCallStateTracker;->registerIIMSListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/IMSCallStateTracker;


# direct methods
.method constructor <init>(Lcom/android/incallui/IMSCallStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/IMSCallStateTracker$1;->this$0:Lcom/android/incallui/IMSCallStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private voWifiCheck()V
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker$1;->this$0:Lcom/android/incallui/IMSCallStateTracker;

    invoke-virtual {v3}, Lcom/android/incallui/IMSCallStateTracker;->isVoWifiRegistered()Z

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker$1;->this$0:Lcom/android/incallui/IMSCallStateTracker;

    # getter for: Lcom/android/incallui/IMSCallStateTracker;->mVoWifiOnPrev:Z
    invoke-static {v3}, Lcom/android/incallui/IMSCallStateTracker;->access$200(Lcom/android/incallui/IMSCallStateTracker;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker$1;->this$0:Lcom/android/incallui/IMSCallStateTracker;

    # setter for: Lcom/android/incallui/IMSCallStateTracker;->mVoWifiOnPrev:Z
    invoke-static {v3, v2}, Lcom/android/incallui/IMSCallStateTracker;->access$202(Lcom/android/incallui/IMSCallStateTracker;Z)Z

    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker$1;->this$0:Lcom/android/incallui/IMSCallStateTracker;

    # getter for: Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;
    invoke-static {v3}, Lcom/android/incallui/IMSCallStateTracker;->access$300(Lcom/android/incallui/IMSCallStateTracker;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/IMSCallStateTracker$1;->this$0:Lcom/android/incallui/IMSCallStateTracker;

    # getter for: Lcom/android/incallui/IMSCallStateTracker;->mVoWifiReceivers:Ljava/util/List;
    invoke-static {v3}, Lcom/android/incallui/IMSCallStateTracker;->access$300(Lcom/android/incallui/IMSCallStateTracker;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/IMSCallStateChangeReceiver;

    invoke-interface {v1, v2}, Lcom/android/incallui/IMSCallStateChangeReceiver;->onReceive(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/IMSCallStateTracker$1;->this$0:Lcom/android/incallui/IMSCallStateTracker;

    # getter for: Lcom/android/incallui/IMSCallStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/IMSCallStateTracker;->access$000(Lcom/android/incallui/IMSCallStateTracker;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/IMSCallStateTracker;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imsListener - mContext is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/incallui/IMSCallStateTracker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/IMSCallStateTracker;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imsListener - IMS state chaged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/IMSCallStateTracker$1;->voWifiCheck()V

    goto :goto_0
.end method
