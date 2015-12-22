.class final Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;
.super Landroid/os/AsyncTask;
.source "PeopleStripeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/PeopleStripeUtils;->makePeopleStripeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$contentTitle:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$contentTitle:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$timeStamp:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$number:Ljava/lang/String;

    # invokes: Lcom/android/server/telecom/secutils/PeopleStripeUtils;->isPeopleStripeContact(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/PeopleStripeUtils;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v8

    :cond_0
    invoke-static {v6}, Lcom/android/server/telecom/secutils/PeopleStripeUtils;->removePeopleStripeNotification(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "tel:"

    const-string v2, "tel:"

    iget-object v3, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "samsung.people.uris"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$contentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "samsung.people.titles"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-array v3, v7, [J

    iget-wide v4, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$timeStamp:J

    aput-wide v4, v3, v6

    const-string v4, "samsung.people.timestamps"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lcom/android/server/telecom/secutils/PeopleStripeUtils;->createCallLogListPendingIntent()Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/telecom/secutils/PeopleStripeUtils;->access$100()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "samsung.people.pendingIntents"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "PeopleStripeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makePeopleStripeData : uris - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "titles : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " timestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$timeStamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/PeopleStripeUtils$1;->val$context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->postEdgeNotification(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
