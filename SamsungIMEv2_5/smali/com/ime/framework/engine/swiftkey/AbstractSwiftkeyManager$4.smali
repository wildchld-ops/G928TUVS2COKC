.class Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadOrUnloadAutoTextModel(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

.field final synthetic val$autoTextPath:Ljava/lang/String;

.field final synthetic val$load:Z


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iput-object p2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->val$autoTextPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->val$load:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->this$0:Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;

    iget-object v1, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->val$autoTextPath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$4;->val$load:Z

    # invokes: Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadOrUnloadAutoTextModelByThread(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->access$100(Lcom/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Ljava/lang/String;Z)V

    return-void
.end method
