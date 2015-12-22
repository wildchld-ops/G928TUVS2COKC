.class Lcom/android/server/telecom/Call$3;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/Call;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Call$3;->this$0:Lcom/android/server/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/Call$3;->this$0:Lcom/android/server/telecom/Call;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/telecom/Call;->access$202(Lcom/android/server/telecom/Call;Z)Z

    iget-object v0, p0, Lcom/android/server/telecom/Call$3;->this$0:Lcom/android/server/telecom/Call;

    # invokes: Lcom/android/server/telecom/Call;->processDirectToVoicemail()V
    invoke-static {v0}, Lcom/android/server/telecom/Call;->access$300(Lcom/android/server/telecom/Call;)V

    return-void
.end method
