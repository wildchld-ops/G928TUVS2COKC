.class Lcom/android/phone/NetworkModeSpinner$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkModeSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModeSpinner;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$1;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$1;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$000(Lcom/android/phone/NetworkModeSpinner;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSubscriptionsChanged:"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$1;->this$0:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v0}, Lcom/android/phone/NetworkModeSpinner;->updatePhoneStateListeners()V

    return-void
.end method
