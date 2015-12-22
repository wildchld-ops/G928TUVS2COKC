.class Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$1;
.super Ljava/lang/Object;
.source "SpamCallServiceMgr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr$1;->this$0:Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "checkserviceConnection - onServiceConnected "

    # invokes: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bst/spamcall/numbermark/IGetNumMarkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "onServiceDisconnected - "

    # invokes: Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->access$000(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/IGetNumMarkService;

    return-void
.end method
