.class Lcom/whitepages/nameid/NameIDHelper$NameIDCallerInfoQueryListener;
.super Ljava/lang/Object;
.source "NameIDHelper.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whitepages/nameid/NameIDHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameIDCallerInfoQueryListener"
.end annotation


# instance fields
.field _notifier:Lcom/android/server/telecom/MissedCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/MissedCallNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/whitepages/nameid/NameIDHelper$NameIDCallerInfoQueryListener;->_notifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3

    const-string v0, "NameIDHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query complete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/android/server/telecom/Call;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/telecom/Call;->setCallerInfo(Lcom/android/internal/telephony/CallerInfo;I)V

    iget-object v0, p0, Lcom/whitepages/nameid/NameIDHelper$NameIDCallerInfoQueryListener;->_notifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p2}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    return-void
.end method
