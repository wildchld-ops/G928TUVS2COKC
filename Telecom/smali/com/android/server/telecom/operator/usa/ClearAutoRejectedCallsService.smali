.class public Lcom/android/server/telecom/operator/usa/ClearAutoRejectedCallsService;
.super Landroid/app/IntentService;
.source "ClearAutoRejectedCallsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/operator/usa/ClearAutoRejectedCallsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.phone.intent.CLEAR_AUTO_REJECTED_CALLS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->getInstance()Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->clearAutoRejectedCalls()V

    :cond_0
    return-void
.end method
