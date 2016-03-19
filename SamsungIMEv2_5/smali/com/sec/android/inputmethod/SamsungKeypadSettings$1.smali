.class Lcom/sec/android/inputmethod/SamsungKeypadSettings$1;
.super Ljava/lang/Object;
.source "SamsungKeypadSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettings;->removeKPMExFolderByThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettings$1;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    # invokes: Lcom/sec/android/inputmethod/SamsungKeypadSettings;->removeKPMExFolder()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettings;->access$000(Lcom/sec/android/inputmethod/SamsungKeypadSettings;)V

    return-void
.end method
