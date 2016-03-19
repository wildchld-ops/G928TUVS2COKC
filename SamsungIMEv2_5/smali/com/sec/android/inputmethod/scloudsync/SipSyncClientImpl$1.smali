.class Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl$1;
.super Ljava/lang/Object;
.source "SipSyncClientImpl.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;->updateLocal(Landroid/content/Context;ILcom/samsung/android/scloud/oem/lib/sync/SyncItem;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl$1;->this$0:Lcom/sec/android/inputmethod/scloudsync/SipSyncClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 3

    const-string v0, "SamsungIME_SYNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transferred : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
