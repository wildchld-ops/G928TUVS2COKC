.class Lcom/android/keyguard/sec/KeyguardSignatureView$2;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "KeyguardSignatureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before set sign service, mSignView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/ISignServiceInterface;->getEngineStatus()Z

    move-result v3

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v2, v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$302(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/android/internal/policy/ISignServiceInterface;->delUser(I)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/ISignServiceInterface;->readSignatureData(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "KeyguardSignatureView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved signatures are not sufficient. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v2, "KeyguardSignatureView"

    const-string v3, "fail to init engine"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
