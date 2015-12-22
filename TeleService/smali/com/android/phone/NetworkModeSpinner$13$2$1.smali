.class Lcom/android/phone/NetworkModeSpinner$13$2$1;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModeSpinner$13$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/NetworkModeSpinner$13$2;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner$13$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$13$2$1;->this$2:Lcom/android/phone/NetworkModeSpinner$13$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$13$2$1;->this$2:Lcom/android/phone/NetworkModeSpinner$13$2;

    iget-object v0, v0, Lcom/android/phone/NetworkModeSpinner$13$2;->this$1:Lcom/android/phone/NetworkModeSpinner$13;

    iget-object v0, v0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeNetworkMode..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$13$2$1;->this$2:Lcom/android/phone/NetworkModeSpinner$13$2;

    iget-object v0, v0, Lcom/android/phone/NetworkModeSpinner$13$2;->this$1:Lcom/android/phone/NetworkModeSpinner$13;

    iget-object v0, v0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # invokes: Lcom/android/phone/NetworkModeSpinner;->changeNetworkType()V
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$4000(Lcom/android/phone/NetworkModeSpinner;)V

    return-void
.end method
