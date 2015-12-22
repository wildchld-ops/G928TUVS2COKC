.class Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionDownDelayed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;->this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$3902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z

    return-void
.end method
