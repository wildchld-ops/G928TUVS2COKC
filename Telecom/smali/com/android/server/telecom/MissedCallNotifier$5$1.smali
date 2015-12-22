.class Lcom/android/server/telecom/MissedCallNotifier$5$1;
.super Lcom/android/server/telecom/Call$ListenerBase;
.source "MissedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/MissedCallNotifier$5;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/telecom/MissedCallNotifier$5;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/MissedCallNotifier$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier$5$1;->this$1:Lcom/android/server/telecom/MissedCallNotifier$5;

    invoke-direct {p0}, Lcom/android/server/telecom/Call$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$5$1;->this$1:Lcom/android/server/telecom/MissedCallNotifier$5;

    iget-object v0, v0, Lcom/android/server/telecom/MissedCallNotifier$5;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    return-void
.end method
