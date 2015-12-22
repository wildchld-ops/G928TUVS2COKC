.class Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method private constructor <init>(Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 1

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl$1;-><init>(Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 2

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    invoke-static {v0}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;->onPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ClipboardExManager"

    const-string v1, "mClipboardEventListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
