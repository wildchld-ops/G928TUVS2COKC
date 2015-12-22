.class Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl$1;->this$1:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl$1;->this$1:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method
