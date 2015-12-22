.class Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2$1;
.super Lcom/android/server/telecom/Call$ListenerBase;
.source "AutoRejectedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2$1;->this$1:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;

    invoke-direct {p0}, Lcom/android/server/telecom/Call$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2$1;->this$1:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;

    iget-object v0, v0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;->this$0:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->showAutoRejectedCallNotification(Lcom/android/server/telecom/Call;Z)V

    return-void
.end method
