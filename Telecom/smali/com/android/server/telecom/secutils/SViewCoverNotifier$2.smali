.class Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;
.super Ljava/lang/Object;
.source "SViewCoverNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/SViewCoverNotifier;->notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND new=1"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;-><init>(Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    const-string v3, "content://logs/call/group"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$600()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC LIMIT 10"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
