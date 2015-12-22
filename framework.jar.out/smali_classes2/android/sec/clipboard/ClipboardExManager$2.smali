.class Landroid/sec/clipboard/ClipboardExManager$2;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$setPrimary:Z

.field final synthetic val$withoutNoti:Z

.field final synthetic val$withoutSendingOrigin:Z


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;ZZZ)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput-boolean p3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$withoutNoti:Z

    iput-boolean p4, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$setPrimary:Z

    iput-boolean p5, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$withoutSendingOrigin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iget-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$withoutNoti:Z

    iget-boolean v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$setPrimary:Z

    iget-boolean v4, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$withoutSendingOrigin:Z

    # invokes: Landroid/sec/clipboard/ClipboardExManager;->add(Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z
    invoke-static {v0, v1, v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->access$400(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    return-void
.end method
