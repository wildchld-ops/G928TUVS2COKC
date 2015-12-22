.class Lcom/android/server/telecom/MissedCallNotifier$4;
.super Ljava/lang/Object;
.source "MissedCallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotificationDelay(Lcom/android/server/telecom/Call;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/MissedCallNotifier;

.field final synthetic val$call:Lcom/android/server/telecom/Call;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier$4;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    iput-object p2, p0, Lcom/android/server/telecom/MissedCallNotifier$4;->val$call:Lcom/android/server/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "showMissedCallNotification"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$4;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier$4;->val$call:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    return-void
.end method
